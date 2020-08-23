#!/bin/bash
docker build -t ai-dev:latest .

docker run --rm -it --network=host\
            ai-dev:latest