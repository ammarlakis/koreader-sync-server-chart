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

## Release

Release automation follows the chart release flow used by the sibling chart repositories:

```bash
just release
```

The release script bumps `charts/koreader-sync-server/Chart.yaml`, regenerates chart documentation, prepends `CHANGELOG.md`, commits, tags, and pushes. The GitHub Actions release workflow packages the chart, creates a GitHub release asset, and dispatches the shared Helm registry update workflow.

## License

This project is licensed under the MIT License.
