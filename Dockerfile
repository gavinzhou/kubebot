FROM alpine:3.4
MAINTAINER gavin zhou <gavin.zhou@gmail.com>

ADD https://storage.googleapis.com/kubernetes-release/release/v1.5.2/bin/linux/amd64/kubectl /usr/bin/kubectl

RUN apk add --no-cache ca-certificates \
  && chmod +x /usr/bin/kubectl
ADD kubebot /kubebot

ENTRYPOINT ["/kubebot"]
