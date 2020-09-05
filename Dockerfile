
FROM alpine

RUN apk add git \
	&& apk add yarn \
	&& git clone https://github.com/siriusman/dockerserver.git \ 
	&& cd dockerserver \
	&& yarn 

WORKDIR ./dockerserver

CMD yarn start

EXPOSE 3000

