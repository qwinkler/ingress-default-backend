# Default Ingress Backend

<img src="./example.png">

## Build

```sh
docker build -t smoulder/ingress-default-backend .
```

## Run

```sh
docker run -p 80:80 smoulder/ingress-default-backend
```

## Usage with nginx ingress + helm

```bash
helm install \
  ingress \
  stable/nginx-ingress \
  --version 1.27.0 \
  --set defaultBackend.enabled=true \
  --set defaultBackend.name=smoulder-def-backend \
  --set defaultBackend.image.repository=smoulder/ingress-default-backend \
  --set-string defaultBackend.image.tag="latest" \
  --set-string defaultBackend.image.runAsUser=0 \
  --set defaultBackend.port=80
```