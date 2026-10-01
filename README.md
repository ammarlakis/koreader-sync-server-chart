# KOReader Sync Server Helm Chart

Helm chart for deploying the [KOReader sync server](https://github.com/koreader/koreader-sync-server) on Kubernetes.

## Installation

```bash
helm repo add ammarlakis https://ammarlakis.github.io/helm-charts
helm repo update
helm install koreader-sync-server ammarlakis/koreader-sync-server
```

## Local Validation

```bash
helm lint charts/koreader-sync-server
helm template koreader-sync-server charts/koreader-sync-server
```

## License

This project is licensed under the MIT License.
