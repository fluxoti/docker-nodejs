FROM alpine:3.4
MAINTAINER FluxoTI <lucas.gois@fluxoti.com>

RUN mkdir -p /var/www && apk add --update nodejs && apk add bash
EXPOSE 3000
WORKDIR /var/www
ENTRYPOINT ["npm", "start"]