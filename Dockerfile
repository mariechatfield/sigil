FROM golang:1.10-stretch

WORKDIR /go/src/github.com/cupcake/sigil
COPY server.go .
COPY gen gen

RUN go get
RUN go build -v .

CMD ["sigil"]