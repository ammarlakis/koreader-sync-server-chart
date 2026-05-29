# koreader-sync-server

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.1.1](https://img.shields.io/badge/AppVersion-v2.1.1-informational?style=flat-square)

Helm chart for deploying the KOReader sync server

**Homepage:** <https://github.com/ammarlakis/koreader-sync-server-chart>

## Maintainers

| Name        | Email | Url                             |
| ----------- | ----- | ------------------------------- |
| Ammar Lakis |       | <https://github.com/ammarlakis> |

## Source Code

- <https://github.com/koreader/koreader-sync-server>
- <https://hub.docker.com/r/koreader/kosync>

## Values

| Key                                 | Type   | Default                                                                              | Description                                                                                                                        |
| ----------------------------------- | ------ | ------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------- |
| affinity                            | object | `{}`                                                                                 | Pod affinity rules.                                                                                                                |
| env                                 | object | `{"ENABLE_USER_REGISTRATION":"true"}`                                                | Environment variables rendered as literal values.                                                                                  |
| extraEnv                            | list   | `[]`                                                                                 | Additional environment variables. Supports value and valueFrom entries.                                                            |
| extraVolumeMounts                   | list   | `[]`                                                                                 | Additional volume mounts.                                                                                                          |
| extraVolumes                        | list   | `[]`                                                                                 | Additional volumes. Each item should contain name and volume keys.                                                                 |
| fullnameOverride                    | string | `""`                                                                                 | Override the full generated resource name.                                                                                         |
| image.digest                        | string | `"sha256:bb3f13615365703315a43b9059f65e71e876440f867e23a42bf27f2fa18264e1"`          | KOReader sync server image digest. When set, the rendered image uses repository@digest. |
| image.pullPolicy                    | string | `"IfNotPresent"`                                                                     | Kubernetes image pull policy.                                                                                                      |
| image.repository                    | string | `"koreader/kosync"`                                                                  | KOReader sync server image repository.                                                                                             |
| image.tag                           | string | `"v2.1.1"`                                                                           | KOReader sync server image tag.                                                                                                    |
| imagePullSecrets                    | list   | `[]`                                                                                 | Image pull secrets for private registries.                                                                                         |
| ingress.annotations                 | object | `{}`                                                                                 | Ingress annotations.                                                                                                               |
| ingress.className                   | string | `""`                                                                                 | Ingress class name. If empty, the cluster default is used.                                                                         |
| ingress.enabled                     | bool   | `false`                                                                              | Enable an Ingress resource.                                                                                                        |
| ingress.hosts                       | list   | `[{"host":"koreader-sync-server.local","paths":[{"path":"/","pathType":"Prefix"}]}]` | Ingress host rules.                                                                                                                |
| ingress.tls                         | list   | `[]`                                                                                 | Ingress TLS configuration.                                                                                                         |
| livenessProbe.enabled               | bool   | `true`                                                                               | Enable the liveness probe.                                                                                                         |
| livenessProbe.initialDelaySeconds   | int    | `15`                                                                                 | Initial liveness probe delay in seconds.                                                                                           |
| livenessProbe.path                  | string | `"/healthcheck"`                                                                     | HTTP path for the liveness probe.                                                                                                  |
| livenessProbe.periodSeconds         | int    | `20`                                                                                 | Liveness probe period in seconds.                                                                                                  |
| livenessProbe.timeoutSeconds        | int    | `2`                                                                                  | Liveness probe timeout in seconds.                                                                                                 |
| nameOverride                        | string | `""`                                                                                 | Override the chart name used in generated resource names.                                                                          |
| nodeSelector                        | object | `{}`                                                                                 | Node selector for scheduling.                                                                                                      |
| persistence.dataRedis.accessModes   | list   | `["ReadWriteOnce"]`                                                                  | PVC access modes.                                                                                                                  |
| persistence.dataRedis.existingClaim | string | `""`                                                                                 | Existing PVC name to use instead of creating one.                                                                                  |
| persistence.dataRedis.size          | string | `"1Gi"`                                                                              | PVC size for Redis data.                                                                                                           |
| persistence.dataRedis.storageClass  | string | `""`                                                                                 | StorageClass for the PVC. Set to "-" to request an empty storageClassName.                                                         |
| persistence.enabled                 | bool   | `true`                                                                               | Persist the Redis data directory.                                                                                                  |
| podAnnotations                      | object | `{}`                                                                                 | Pod annotations.                                                                                                                   |
| podLabels                           | object | `{}`                                                                                 | Additional pod labels.                                                                                                             |
| podSecurityContext                  | object | `{}`                                                                                 | Pod security context.                                                                                                              |
| priorityClassName                   | string | `""`                                                                                 | Pod priority class name.                                                                                                           |
| readinessProbe.enabled              | bool   | `true`                                                                               | Enable the readiness probe.                                                                                                        |
| readinessProbe.initialDelaySeconds  | int    | `5`                                                                                  | Initial readiness probe delay in seconds.                                                                                          |
| readinessProbe.path                 | string | `"/healthcheck"`                                                                     | HTTP path for the readiness probe.                                                                                                 |
| readinessProbe.periodSeconds        | int    | `10`                                                                                 | Readiness probe period in seconds.                                                                                                 |
| readinessProbe.timeoutSeconds       | int    | `2`                                                                                  | Readiness probe timeout in seconds.                                                                                                |
| replicaCount                        | int    | `1`                                                                                  | Number of KOReader sync server replicas to run.                                                                                    |
| resources                           | object | `{}`                                                                                 | Container resource requests and limits.                                                                                            |
| runtimeClassName                    | string | `""`                                                                                 | RuntimeClass name for the pod.                                                                                                     |
| securityContext                     | object | `{}`                                                                                 | Container security context.                                                                                                        |
| service.httpPort                    | int    | `17200`                                                                              | HTTP service and container port.                                                                                                   |
| service.httpsPort                   | int    | `7200`                                                                               | HTTPS service and container port.                                                                                                  |
| service.type                        | string | `"ClusterIP"`                                                                        | Kubernetes Service type.                                                                                                           |
| tolerations                         | list   | `[]`                                                                                 | Pod tolerations.                                                                                                                   |
| topologySpreadConstraints           | list   | `[]`                                                                                 | Pod topology spread constraints.                                                                                                   |

---

Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
