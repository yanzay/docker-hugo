FROM alpine:latest

RUN mkdir -p /build
WORKDIR /build

RUN apk update && apk --no-cache add curl git py-pygments rsync openssh-client
RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.34/hugo_0.34_Linux-64bit.tar.gz | tar -xz
RUN ln -s /build/hugo /bin/hugo
CMD ["/bin/hugo"]
