FROM golang:1.13-alpine
WORKDIR /golang-forms
ADD . /golang-forms
RUN cd /golang-forms && go build
ENTRYPOINT ["./golang-forms"]