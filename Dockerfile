FROM golang:alpine


WORKDIR /opt/hello-go/
COPY cmd/hello.go .
COPY cmd/static static/
COPY cmd/welcome-template.html .

RUN go build ./hello.go


# FROM alpine:latest

# WORKDIR /opt/hello-go/

EXPOSE 31116
# ENTRYPOINT ["./hello"]\
CMD ./hello
