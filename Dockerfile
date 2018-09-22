FROM golang:1.11-stretch

WORKDIR /app/sigil
COPY server.go .
COPY gen gen
COPY go.mod .

RUN go build -v .

CMD ["./sigil"]