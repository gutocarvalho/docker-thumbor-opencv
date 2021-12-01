## Thumbor + OpenCV + Python 2.7

Dockerfile for Thumbor 6.7.5 and OpenCV 4.2.0.32.

Using python 2.7 base image.

## How to build it

    git clone https://github.com/gutocarvalho/docker-thumbor-opencv.git
    cd docker-thumbor-opencv
    docker build . -t docker-thumbor-opencv:0.0.1

## How to run it

    docker run -d -p 8888:8888 docker-thumbor-opencv:0.0.1

## How to use and test it (in your browser)

Rezise

    http://127.0.0.1:8888/unsafe/200x200/https://gutocarvalho.net/media/website/responsive/guto-lg.png

Blur

    http://127.0.0.1:8888/unsafe/200x200/filters:blur(5)/https://gutocarvalho.net/media/website/responsive/guto-lg.png
    
Grayscale

    http://127.0.0.1:8888/unsafe/200x200/filters:grayscale()/https://gutocarvalho.net/media/website/responsive/guto-lg.png
    
Rotate 90º

    http://127.0.0.1:8888/unsafe/200x200/filters:rotate(90)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

Rotate 180º

    http://127.0.0.1:8888/unsafe/200x200/filters:rotate(180)/https://gutocarvalho.net/media/website/responsive/guto-lg.png
    
Converting to webp

    http://127.0.0.1:8888/unsafe/200x200/filters:format(webp)/https://gutocarvalho.net/media/website/responsive/guto-lg.png
    
Rounded Corner

    http://127.0.0.1:8888/unsafe/400x300/filters:round_corner(20|70,0,0,0)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

More filters: 

    https://thumbor.readthedocs.io/en/stable/filters.html
    
:)

## References

### Thumbor

Thumbor is a smart imaging service. It enables on-demand crop, resizing and flipping of images.

About the project

- https://github.com/thumbor/thumbor
- https://github.com/thumbor/thumbor/releases/tag/6.7.5

Documentation

- https://thumbor.readthedocs.io/en/stable/index.html
- https://thumbor.readthedocs.io/en/stable/installing.html
- https://thumbor.readthedocs.io/en/stable/usage.html
- https://thumbor.readthedocs.io/en/stable/customizing.html
- https://thumbor.readthedocs.io/en/stable/filters.html
- https://thumbor.readthedocs.io/en/stable/imaging.html

### OpenCV

OpenCV (Open Source Computer Vision Library: http://opencv.org) is an open-source BSD-licensed library that includes several hundreds of computer vision algorithms

About the project

- https://opencv.org/
- https://opencv.org/opencv-4-2-0/

Documentation

- https://docs.opencv.org/4.2.0/
