FROM docker.io/golang:1.24.2

WORKDIR /gnet

COPY ./src /gnet

RUN GOAMD64=v3 go build -o app -tags=poll_opt -gcflags="-l=4" -ldflags="-s -w" .

EXPOSE 8080

CMD ./app
