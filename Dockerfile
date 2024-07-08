FROM ubuntu:latest
LABEL authors="adena"

ENTRYPOINT ["top", "-b"]