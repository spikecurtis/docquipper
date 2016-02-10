# Docker image for Quipper

[Quipper][quipper] is an embedded, scalable functional programming language for quantum computing.

This repo creates a Docker image for Quipper.

Once you've [installed Docker](https://docs.docker.com/engine/installation/), 
you can use this image like this.

    docker pull spikecurtis/quipper
    docker run -v /path/to/your/code:/code spikecurtis/quipper quipper /code/mycode.hs

[quipper]: http://www.mathstat.dal.ca/~selinger/quipper/