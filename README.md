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
helm install --dry-run --debug RELEASE_NAME ./charts/CHART_NAME -n NAMESPACE
```
