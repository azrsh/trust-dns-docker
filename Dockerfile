FROM rust:1.54.0-buster as build-env

RUN git clone https://github.com/bluejekyll/trust-dns -b v0.20.3 --depth 1 
WORKDIR /trust-dns
RUN cargo build --release -p trust-dns --features dns-over-openssl,dnssec-openssl

FROM gcr.io/distroless/cc-debian10
COPY --from=build-env /trust-dns/target/release/named /

ENTRYPOINT [ "/named" ]
