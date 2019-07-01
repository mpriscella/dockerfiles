FROM debian:buster
LABEL maintainer "Mike Priscella <mpriscella@gmail.com>"

RUN apt-get update && apt-get install -y curl git pkg-config zip g++ zlib1g-dev unzip python3

ADD https://github.com/bazelbuild/bazel/releases/download/0.27.0/bazel-0.27.0-installer-linux-x86_64.sh \
  /tmp/bazel-installer.sh
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /tmp/bazel-installer.sh \
  && /tmp/bazel-installer.sh --user
ENV PATH=/root/.bazel/bin:${PATH}

WORKDIR /workspace
RUN git clone https://github.com/google/robotstxt.git \
  && cd robotstxt \
  && bazel build :robots_main

ENTRYPOINT ["/entrypoint.sh"]
