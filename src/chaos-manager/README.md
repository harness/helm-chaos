# chaos-manager

![Version: 0.6.0](https://img.shields.io/badge/Version-0.6.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.6.0](https://img.shields.io/badge/AppVersion-0.6.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://harness.github.io/helm-common | harness-common | 1.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| argoWorkflowControllerImage.image.digest | string | `""` |  |
| argoWorkflowControllerImage.image.registry | string | `"docker.io"` |  |
| argoWorkflowControllerImage.image.repository | string | `"chaosnative/workflow-controller"` |  |
| argoWorkflowControllerImage.image.tag | string | `"v3.3.1"` |  |
| argoWorkflowExecutorImage.image.digest | string | `""` |  |
| argoWorkflowExecutorImage.image.registry | string | `"docker.io"` |  |
| argoWorkflowExecutorImage.image.repository | string | `"chaosnative/argoexec"` |  |
| argoWorkflowExecutorImage.image.tag | string | `"v3.3.1"` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `10` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPU | string | `""` |  |
| autoscaling.targetMemory | string | `""` |  |
| chaosExperimentLimit | string | `"2000"` |  |
| chaosGamedayLimit | string | `"200"` |  |
| chaosHubLimit | string | `"30"` |  |
| chaosHubSize | string | `"200"` |  |
| configmap | object | `{}` |  |
| deployAsSts | bool | `false` |  |
| enterpriseHubBranchName | string | `"release/1.15.x"` |  |
| expHelperImageVersion | string | `"1.15.0"` |  |
| extraVolumeMounts[0].mountPath | string | `"/tmp/dashboard.yaml"` |  |
| extraVolumeMounts[0].name | string | `"chaos-dashboard-config"` |  |
| extraVolumeMounts[0].subPath | string | `"dashboard.yaml"` |  |
| extraVolumes[0].configMap.name | string | `"chaos-dashboard-config"` |  |
| extraVolumes[0].name | string | `"chaos-dashboard-config"` |  |
| fullnameOverride | string | `""` |  |
| global.cd.enabled | bool | `true` | Enable to install CD |
| global.database.mongo.extraArgs | string | `""` |  |
| global.database.mongo.hosts | list | `[]` | provide default values if mongo.installed is set to false |
| global.database.mongo.installed | bool | `true` |  |
| global.database.mongo.passwordKey | string | `""` |  |
| global.database.mongo.protocol | string | `"mongodb"` |  |
| global.database.mongo.secretName | string | `""` |  |
| global.database.mongo.userKey | string | `""` |  |
| global.ingress.className | string | `"harness"` |  |
| global.ingress.defaultbackend.create | bool | `true` | Create will deploy a default backend into your cluster |
| global.ingress.enabled | bool | `true` |  |
| global.ingress.hosts[0] | string | `""` |  |
| global.ingress.loadBalancerEnabled | bool | `true` |  |
| global.ingress.loadBalancerIP | string | `"0.0.0.0"` |  |
| global.ingress.nginx.create | bool | `true` | Create Nginx Controller.  True will deploy a controller into your cluster |
| global.ingress.tls.enabled | bool | `false` |  |
| global.ingress.tls.secretName | string | `"harness-ssl"` |  |
| global.loadbalancerURL | string | `"test@harness.io"` |  |
| image.digest | string | `""` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"harness/smp-chaos-manager-signed"` |  |
| image.tag | string | `"1.15.6"` |  |
| jobs.chaos_db_upgrade.enabled | bool | `false` |  |
| jobs.chaos_db_upgrade.image.digest | string | `""` |  |
| jobs.chaos_db_upgrade.image.imagePullSecrets | list | `[]` |  |
| jobs.chaos_db_upgrade.image.pullPolicy | string | `"Always"` |  |
| jobs.chaos_db_upgrade.image.registry | string | `"docker.io"` |  |
| jobs.chaos_db_upgrade.image.repository | string | `"harness/smp-chaos-db-upgrade-agent-signed"` |  |
| jobs.chaos_db_upgrade.image.tag | string | `"1.15.0"` |  |
| jobs.chaos_db_upgrade.slackURLToNotify | string | `"no-url"` |  |
| lifecycleHooks | object | `{}` |  |
| litmusChaosExporterImage.image.digest | string | `""` |  |
| litmusChaosExporterImage.image.registry | string | `"docker.io"` |  |
| litmusChaosExporterImage.image.repository | string | `"chaosnative/chaos-exporter"` |  |
| litmusChaosExporterImage.image.tag | string | `"1.15.0"` |  |
| litmusChaosOperatorImage.image.digest | string | `""` |  |
| litmusChaosOperatorImage.image.registry | string | `"docker.io"` |  |
| litmusChaosOperatorImage.image.repository | string | `"chaosnative/chaos-operator"` |  |
| litmusChaosOperatorImage.image.tag | string | `"1.15.0"` |  |
| litmusChaosRunnerImage.image.digest | string | `""` |  |
| litmusChaosRunnerImage.image.registry | string | `"docker.io"` |  |
| litmusChaosRunnerImage.image.repository | string | `"chaosnative/chaos-runner"` |  |
| litmusChaosRunnerImage.image.tag | string | `"1.15.0"` |  |
| logWatcherImage.image.digest | string | `""` |  |
| logWatcherImage.image.registry | string | `"docker.io"` |  |
| logWatcherImage.image.repository | string | `"chaosnative/harness-chaos-log-watcher"` |  |
| logWatcherImage.image.tag | string | `"1.15.1"` |  |
| maxSurge | int | `1` |  |
| maxUnavailable | int | `0` |  |
| mongoSecrets.password.key | string | `"mongodb-root-password"` |  |
| mongoSecrets.password.name | string | `"mongodb-replicaset-chart"` |  |
| mongoSecrets.userName.key | string | `"mongodbUsername"` |  |
| mongoSecrets.userName.name | string | `"harness-secrets"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| parallelChaosExperimentRuns | string | `"500"` |  |
| platform.harness-manager.featureFlags.ADDITIONAL | string | `"CHAOS_ENABLED"` |  |
| platform.harness-manager.featureFlags.OPA | string | `"OPA_PIPELINE_GOVERNANCE"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `2` |  |
| replicaCountSts | int | `0` |  |
| resources.limits.cpu | string | `"600m"` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | string | `"600m"` |  |
| resources.requests.memory | string | `"512Mi"` |  |
| securityContext | object | `{}` |  |
| service.grpcport | int | `8081` |  |
| service.port | int | `8080` |  |
| service.targetgrpcport | int | `8081` |  |
| service.targetport | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `"harness-default"` |  |
| skipSecureVerify | string | `"true"` |  |
| subscriberImage.image.digest | string | `""` |  |
| subscriberImage.image.registry | string | `"docker.io"` |  |
| subscriberImage.image.repository | string | `"harness/smp-chaos-subscriber"` |  |
| subscriberImage.image.tag | string | `"1.15.1"` |  |
| tolerations | list | `[]` |  |
| waitForInitContainer.image.digest | string | `""` |  |
| waitForInitContainer.image.imagePullSecrets | list | `[]` |  |
| waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| waitForInitContainer.image.registry | string | `"docker.io"` |  |
| waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| waitForInitContainer.image.tag | string | `"latest"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
