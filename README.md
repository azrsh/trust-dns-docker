# trust-dns-docker

This is a Dockerfile and docker-compose.yml for dockerizing trust-dns.  
trust-dns repository is [here](https://github.com/bluejekyll/trust-dns).  

## Prerequirement
+ Docker
+ Docker Compose

## Usage

### Using published Docker image

1. Clone this repository.
1. Make `configs` directry in this repository root.
1. Write configs.
    + If you want to run test configs, you can copy configs from [named\_test\_configs in trust-dns repository](https://github.com/bluejekyll/trust-dns/tree/main/tests/test-data/named_test_configs).
1. Run `docker-compose up`.

### Using self-build Docker image

1. Clone this repository.
1. Run `docker build -t trust-dns .` in this repository root.
1. Make `configs` directry in this repository root.
1. Write configs.
    + If you want to run test configs, you can copy configs from [named\_test\_configs in trust-dns repository](https://github.com/bluejekyll/trust-dns/tree/main/tests/test-data/named_test_configs).
1. Fix image source `docker-compose.yml`.
    + `ghcr.io/azarashi2931/trust-dns:latest` -> `trust-dns`
1. Run `docker-compose up`.
