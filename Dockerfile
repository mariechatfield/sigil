FROM golang:1.17 as build

WORKDIR /app/sigil
COPY . .

RUN go build -v .

# Now copy it into our base image.
FROM gcr.io/distroless/base
COPY --from=build /app/sigil/sigil /sigil

ENTRYPOINT ["/sigil"]
