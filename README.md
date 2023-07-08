# Codr Helm Charts

## Installing

```bash
helm repo add codr https://helm.codrml.com
helm repo list
# codr    https://helm.codrml.com
```

## Contributing

### Testing charts

```bash
helm install --dry-run --debug RELEASE_NAME ./charts/CHART_NAME -n NAMESPACE
```

### Building charts

```bash
# Build and index the charts
cd charts
helm package *
helm repo index --url http://helm.codr.local/charts .
mv index.yaml ../

# build the docker image
cd ../
docker build -t codr-client-helm . -f Dockerfile.local
```
