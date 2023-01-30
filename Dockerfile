FROM rust:1.67.0-slim-bullseye
RUN apt-get update -y && apt-get upgrade -y && apt-get install git libssl-dev o$

WORKDIR /root/

RUN rustup install nightly
RUN rustup component add rust-src --toolchain nightly
RUN cargo install cargo-dylint && cargo install dylint-link && cargo install ca$

RUN wget https://github.com/WebAssembly/binaryen/releases/download/version_111/$
RUN tar -xzf binaryen-version_111-x86_64-linux.tar.gz
RUN cp -a binaryen-version_111/bin/* /usr/bin/
RUN rm -Rf binaryen-version_111

RUN mkdir /root/contracts/
