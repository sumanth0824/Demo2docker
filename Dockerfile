FROM alpine

RUN apk add --update nodejs npm

RUN npm install -g http-server

COPY . /src

WORKDIR /src

EXPOSE 8081

ENTRYPOINT ["http-server","-p","8081"]