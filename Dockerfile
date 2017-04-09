FROM alpine:latest

RUN mkdir /build
WORKDIR /build

RUN apk --no-cache add curl git py-pygments
RUN curl -L https://github.com/spf13/hugo/releases/download/v0.19/hugo_0.19_Linux-32bit.tar.gz | tar -xz
RUN ln -s /build/hugo_0.19_linux_386/hugo_0.19_linux_386 /bin/hugo
CMD ["/bin/hugo"]
