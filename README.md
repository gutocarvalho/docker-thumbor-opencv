## Thumbor + OpenCV + Python 2.7

Dockerfile for Thumbor 6.7.5 and OpenCV 4.2.0.32.

Using python 2.7 base image.

## How to build it

    git clone https://github.com/gutocarvalho/docker-thumbor-opencv.git
    cd docker-thumbor-opencv
    docker build . -t docker-thumbor-opencv:0.0.1

## How to run it

    docker run -d -p 8888:8888 docker-thumbor-opencv:0.0.1

## How to test filters (in your browser)

### Rezise

Testing resize to 200x200

    http://127.0.0.1:8888/unsafe/200x200/https://gutocarvalho.net/media/website/responsive/guto-lg.png

## Blur

Testing Blur (5)

    http://127.0.0.1:8888/unsafe/200x200/filters:blur(5)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

## Quality

Testing Quality (40)

    http://127.0.0.1:8888/unsafe/200x200/filters:quality(40)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

## Contrast

Testing Contrast (40)

    http://127.0.0.1:8888/unsafe/200x200/filters:contrat(40)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

## brightness

Testing brightness (50)

    http://127.0.0.1:8888/unsafe/200x200/filters:brightness(50)(5)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

## Fill

Fill blue

    http://127.0.0.1:8888/unsafe/fit-in/200x200/filters:fill(blue)/https://gutocarvalho.net/media/website/responsive/guto-lg.png
    
## Grayscale

Testing Graysacle

    (http://127.0.0.1:8888/unsafe/200x200/filters:grayscale()/https://gutocarvalho.net/media/website/responsive/guto-lg.png
    
## Rotation

Testing rotate 90º

    Testing rotate 90º](http://127.0.0.1:8888/unsafe/200x200/filters:rotate(90)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

Testing rotate 180º

    (http://127.0.0.1:8888/unsafe/200x200/filters:rotate(180)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

## Conversion

Converting to webp

     http://127.0.0.1:8888/unsafe/200x200/filters:format(webp)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

Converting to jpeg

     http://127.0.0.1:8888/unsafe/200x200/filters:format(jpeg)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

Converting to gif

    http://127.0.0.1:8888/unsafe/200x200/filters:format(gif)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

## Equalize

Converting to jpeg

    http://127.0.0.1:8888/unsafe/200x200/filters:equalize()/https://gutocarvalho.net/media/website/responsive/guto-lg.png

## Rounded Corner

Rounded Corner

     http://127.0.0.1:8888/unsafe/200x200/filters:round_corner(150|255,255,255,255)/https://gutocarvalho.net/media/website/responsive/guto-lg.png

Open the testing.md file to test!

## More filters

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