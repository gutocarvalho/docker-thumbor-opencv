###
### Building thumbor and opencv
###

FROM python:2.7 as build

ENV THUMBOR_VERSION 6.7.5
ENV OPENCV_VERSION 4.2.0.32

## build packages

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y autoremove && \
    apt-get install -y -q \
                    python-dev \
                    zlib1g-dev \  
                    libboost-python-dev \
                    libpng-dev \
                    libtiff-dev \
                    libcairo2-dev \
                    libimage-exiftool-perl \
                    libmemcached-dev \
                    libmagick++-dev \
                    libopencv-dev \
                    libjpeg-dev \ 
                    libcurl4-openssl-dev \
                    && apt-get clean


## thumbor dependencies

RUN apt-get install -y -q \
                        curl \
                        gifsicle \
                        imagemagick \
                        libjpeg-turbo-progs \
                        graphicsmagick \
                        pngcrush \
                        && apt-get clean

RUN pip2 install --no-cache-dir --upgrade pip

RUN pip2 install --no-cache-dir opencv-python==${OPENCV_VERSION} opencv-engine thumbor==${THUMBOR_VERSION} thumbor-plugins

###
### Building the final image
###

FROM python:2.7

COPY --from=build /usr/local/lib/python2.7/ /usr/local/lib/python2.7/
COPY --from=build /usr/local/lib /usr/local/lib
COPY --from=build /usr/local/bin /usr/local/bin

RUN apt-get update && apt-get install -y -q \
                        curl \
                        gifsicle \
                        libjpeg-turbo-progs \
                        graphicsmagick \
                        pngcrush gifsicle \
                        && apt-get clean \
                        && rm -rf /var/lib/apt/lists/*


RUN ln -s /usr/bin/pngcrush /usr/local/bin/pngcrush

RUN mkdir -p /etc/thumbor && /usr/local/bin/thumbor-config > /etc/thumbor/thumbor.conf

ENV PYTHONPATH /usr/lib/python2.7/site-packages:/usr/local/lib/python2.7/site-packages

ENTRYPOINT ["/usr/local/bin/thumbor"]

EXPOSE 8888
