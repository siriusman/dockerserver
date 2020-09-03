FROM alpine

RUN apk add git \
		&& apk add npm \
		&& npm i -g http-server \
		&& git clone https://github.com/siriusman/dockerserver.git

VOLUME /home/server

WORKDIR /home/server

EXPOSE 8080

CMD http-server
