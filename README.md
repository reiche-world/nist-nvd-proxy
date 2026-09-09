# nist-nvd-proxy
Nginx proxy cache for https://nvd.nist.gov/feeds/

## Usage

Create a cache directory:

```shell
mkdir cache
```

Run the container:

```shell
podman|docker run --rm --name "nist-nvd-proxy" \
  -p 8090:80 \
  -v"$(pwd)/cache:/var/cache/nginx" \
  ghcr.io/reiche-world/nist-nvd-proxy:main
```

Download a file:

```shell
curl -fLO http://localhost:8090/feeds/json/cve/2.0/nvdcve-2.0-2019.json.gz
```