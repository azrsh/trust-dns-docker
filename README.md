# trust-dns-docker

## Prerequirement
+ Docker
+ Docker Compose

## Usage

1. Clone this repository.
1. Run `docker build -t trust-dns .` in this repository root.
1. Make `configs` directry in this repository root.
1. Write configs.
    + If you want to run test configs, you can copy configs from [named\_test\_configs in trust-dns repository](https://github.com/bluejekyll/trust-dns/tree/main/tests/test-data/named_test_configs).
1. Run `docker-compose up`.
