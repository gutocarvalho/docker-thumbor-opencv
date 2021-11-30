FROM python:2.7

ENV THUMBOR_VERSION 6.7.5
ENV OPENCV_VERSION 4.2.0.32

RUN apt-get update && apt-get install -y python-dev python-virtualenv \
                    libpng-dev libtiff-dev \
                    libmagick++-dev libopencv-dev \
                    libjpeg-dev libcurl4-openssl-dev \
                    graphicsmagick pngcrush gifsicle

RUN pip2 install --upgrade pip
RUN pip2 install opencv-python==${OPENCV_VERSION} opencv-engine thumbor==${THUMBOR_VERSION} thumbor-plugins

RUN ln -s /usr/bin/pngcrush /usr/local/bin/pngcrush

RUN mkdir -p /etc/thumbor && /usr/local/bin/thumbor-config > /etc/thumbor/thumbor.conf

ENV PYTHONPATH /usr/lib/python2.7/site-packages:/usr/local/lib/python2.7/site-packages

ENTRYPOINT ["/usr/local/bin/thumbor"]

EXPOSE 8888
