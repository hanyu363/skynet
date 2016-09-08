FROM alpine:latest

RUN mkdir /skynet
COPY ./cservice /skynet/cservice
COPY ./luaclib /skynet/luaclib
COPY ./lualib /skynet/lualib
COPY ./service /skynet/service
COPY skynet /skynet

WORKDIR /skynet

ENV SKYNET_ROOT /skynet
ENV PATH $SKYNET_ROOT:$PATH

ENTRYPOINT ["/bin/sh"]
