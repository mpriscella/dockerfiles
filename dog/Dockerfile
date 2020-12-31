FROM rust

WORKDIR /home/workspace

RUN git clone https://github.com/ogham/dog --branch v0.1.0 .; \
  cargo build --release; \
  mv ./target/release/dog /usr/local/bin/dog

ENTRYPOINT [ "dog" ]
