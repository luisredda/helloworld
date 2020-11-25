FROM golang:1.10

WORKDIR $GOPATH/src/github.com/luisredda/helloworld

COPY . .

RUN go get -d -v ./...

RUN go install -v ./...

EXPOSE 8080

CMD ["helloworld"]
