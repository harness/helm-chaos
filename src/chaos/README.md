## Harness Chaos Chart

A Helm chart for harness chaos module

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.2.0](https://img.shields.io/badge/AppVersion-0.2.0-informational?style=flat-square)

## Usage

Use the following dependency to add this chart repository to your Helm installation:

```
dependencies:
    - name: harness-chaos
      repository: https://harness.github.io/helm-chaos
      version: <no value>
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| chaos-common | string | `nil` |  |
| chaos-driver.affinity | object | `{}` |  |
| chaos-driver.autoscaling | object | `{}` |  |
| chaos-driver.configmap | object | `{}` |  |
| chaos-driver.fullnameOverride | string | `""` |  |
| chaos-driver.image.digest | string | `""` |  |
| chaos-driver.image.pullPolicy | string | `"Always"` |  |
| chaos-driver.image.registry | string | `"docker.io"` |  |
| chaos-driver.image.repository | string | `"chaosnative/harness-smp-chaos-driver"` |  |
| chaos-driver.image.tag | string | `"0.8.0"` |  |
| chaos-driver.maxSurge | int | `1` |  |
| chaos-driver.maxUnavailable | int | `0` |  |
| chaos-driver.mongoSecrets.password.key | string | `"mongodb-root-password"` |  |
| chaos-driver.mongoSecrets.password.name | string | `"mongodb-replicaset-chart"` |  |
| chaos-driver.mongoSecrets.userName.key | string | `"mongodbUsername"` |  |
| chaos-driver.mongoSecrets.userName.name | string | `"harness-secrets"` |  |
| chaos-driver.nameOverride | string | `""` |  |
| chaos-driver.nodeSelector | object | `{}` |  |
| chaos-driver.podAnnotations | object | `{}` |  |
| chaos-driver.podSecurityContext | object | `{}` |  |
| chaos-driver.replicaCount | int | `3` |  |
| chaos-driver.resources.limits.cpu | string | `"500m"` |  |
| chaos-driver.resources.limits.memory | string | `"512Mi"` |  |
| chaos-driver.resources.requests.cpu | string | `"500m"` |  |
| chaos-driver.resources.requests.memory | string | `"512Mi"` |  |
| chaos-driver.securityContext | object | `{}` |  |
| chaos-driver.service.port | int | `9000` |  |
| chaos-driver.service.targetport | int | `9000` |  |
| chaos-driver.service.type | string | `"ClusterIP"` |  |
| chaos-driver.serviceAccount.annotations | object | `{}` |  |
| chaos-driver.serviceAccount.create | bool | `false` |  |
| chaos-driver.serviceAccount.name | string | `"harness-default"` |  |
| chaos-driver.tolerations | list | `[]` |  |
| chaos-driver.waitForInitContainer.image.digest | string | `""` |  |
| chaos-driver.waitForInitContainer.image.imagePullSecrets | list | `[]` |  |
| chaos-driver.waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| chaos-driver.waitForInitContainer.image.registry | string | `"docker.io"` |  |
| chaos-driver.waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| chaos-driver.waitForInitContainer.image.tag | string | `"latest"` |  |
| chaos-k8s-ifs.affinity | object | `{}` |  |
| chaos-k8s-ifs.autoscaling | object | `{}` |  |
| chaos-k8s-ifs.configmap | object | `{}` |  |
| chaos-k8s-ifs.fullnameOverride | string | `""` |  |
| chaos-k8s-ifs.image.digest | string | `""` |  |
| chaos-k8s-ifs.image.pullPolicy | string | `"Always"` |  |
| chaos-k8s-ifs.image.registry | string | `"docker.io"` |  |
| chaos-k8s-ifs.image.repository | string | `"chaosnative/harness-smp-chaos-k8s-ifs"` |  |
| chaos-k8s-ifs.image.tag | string | `"0.8.1"` |  |
| chaos-k8s-ifs.maxSurge | int | `1` |  |
| chaos-k8s-ifs.maxUnavailable | int | `0` |  |
| chaos-k8s-ifs.mongoSecrets.password.key | string | `"mongodb-root-password"` |  |
| chaos-k8s-ifs.mongoSecrets.password.name | string | `"mongodb-replicaset-chart"` |  |
| chaos-k8s-ifs.mongoSecrets.userName.key | string | `"mongodbUsername"` |  |
| chaos-k8s-ifs.mongoSecrets.userName.name | string | `"harness-secrets"` |  |
| chaos-k8s-ifs.nameOverride | string | `""` |  |
| chaos-k8s-ifs.nodeSelector | object | `{}` |  |
| chaos-k8s-ifs.podAnnotations | object | `{}` |  |
| chaos-k8s-ifs.podSecurityContext | object | `{}` |  |
| chaos-k8s-ifs.replicaCount | int | `3` |  |
| chaos-k8s-ifs.resources.limits.cpu | string | `"500m"` |  |
| chaos-k8s-ifs.resources.limits.memory | string | `"512Mi"` |  |
| chaos-k8s-ifs.resources.requests.cpu | string | `"500m"` |  |
| chaos-k8s-ifs.resources.requests.memory | string | `"512Mi"` |  |
| chaos-k8s-ifs.securityContext | object | `{}` |  |
| chaos-k8s-ifs.service.port | int | `6000` |  |
| chaos-k8s-ifs.service.targetport | int | `6000` |  |
| chaos-k8s-ifs.service.type | string | `"ClusterIP"` |  |
| chaos-k8s-ifs.serviceAccount.annotations | object | `{}` |  |
| chaos-k8s-ifs.serviceAccount.create | bool | `false` |  |
| chaos-k8s-ifs.serviceAccount.name | string | `"harness-default"` |  |
| chaos-k8s-ifs.tolerations | list | `[]` |  |
| chaos-k8s-ifs.waitForInitContainer.image.digest | string | `""` |  |
| chaos-k8s-ifs.waitForInitContainer.image.imagePullSecrets | list | `[]` |  |
| chaos-k8s-ifs.waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| chaos-k8s-ifs.waitForInitContainer.image.registry | string | `"docker.io"` |  |
| chaos-k8s-ifs.waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| chaos-k8s-ifs.waitForInitContainer.image.tag | string | `"latest"` |  |
| chaos-manager.affinity | object | `{}` |  |
| chaos-manager.argoWorkflowControllerImage.image.digest | string | `""` |  |
| chaos-manager.argoWorkflowControllerImage.image.registry | string | `"docker.io"` |  |
| chaos-manager.argoWorkflowControllerImage.image.repository | string | `"chaosnative/workflow-controller"` |  |
| chaos-manager.argoWorkflowControllerImage.image.tag | string | `"v3.3.1"` |  |
| chaos-manager.argoWorkflowExecutorImage.image.digest | string | `""` |  |
| chaos-manager.argoWorkflowExecutorImage.image.registry | string | `"docker.io"` |  |
| chaos-manager.argoWorkflowExecutorImage.image.repository | string | `"chaosnative/argoexec"` |  |
| chaos-manager.argoWorkflowExecutorImage.image.tag | string | `"v3.3.1"` |  |
| chaos-manager.autoscaling | object | `{}` |  |
| chaos-manager.chaosExperimentLimit | string | `"2000"` |  |
| chaos-manager.chaosGamedayLimit | string | `"200"` |  |
| chaos-manager.chaosHubLimit | string | `"30"` |  |
| chaos-manager.chaosHubSize | string | `"200"` |  |
| chaos-manager.configmap | object | `{}` |  |
| chaos-manager.enterpriseHubBranchName | string | `"main"` |  |
| chaos-manager.fullnameOverride | string | `""` |  |
| chaos-manager.image.digest | string | `""` |  |
| chaos-manager.image.pullPolicy | string | `"Always"` |  |
| chaos-manager.image.registry | string | `"docker.io"` |  |
| chaos-manager.image.repository | string | `"chaosnative/harness-smp-chaos-manager"` |  |
| chaos-manager.image.tag | string | `"0.8.4"` |  |
| chaos-manager.jobs.chaos_db_upgrade.enabled | bool | `false` |  |
| chaos-manager.jobs.chaos_db_upgrade.image.digest | string | `""` |  |
| chaos-manager.jobs.chaos_db_upgrade.image.imagePullSecrets | list | `[]` |  |
| chaos-manager.jobs.chaos_db_upgrade.image.pullPolicy | string | `"Always"` |  |
| chaos-manager.jobs.chaos_db_upgrade.image.registry | string | `"docker.io"` |  |
| chaos-manager.jobs.chaos_db_upgrade.image.repository | string | `"chaosnative/harness-smp-chaos-db-upgrade-agent"` |  |
| chaos-manager.jobs.chaos_db_upgrade.image.tag | string | `"0.8.1"` |  |
| chaos-manager.jobs.chaos_db_upgrade.slackURLToNotify | string | `"no-url"` |  |
| chaos-manager.litmusChaosExporterImage.image.digest | string | `""` |  |
| chaos-manager.litmusChaosExporterImage.image.registry | string | `"docker.io"` |  |
| chaos-manager.litmusChaosExporterImage.image.repository | string | `"chaosnative/chaos-exporter"` |  |
| chaos-manager.litmusChaosExporterImage.image.tag | string | `"3.0.0-stable"` |  |
| chaos-manager.litmusChaosOperatorImage.image.digest | string | `""` |  |
| chaos-manager.litmusChaosOperatorImage.image.registry | string | `"docker.io"` |  |
| chaos-manager.litmusChaosOperatorImage.image.repository | string | `"chaosnative/chaos-operator"` |  |
| chaos-manager.litmusChaosOperatorImage.image.tag | string | `"3.0.0-stable"` |  |
| chaos-manager.litmusChaosRunnerImage.image.digest | string | `""` |  |
| chaos-manager.litmusChaosRunnerImage.image.registry | string | `"docker.io"` |  |
| chaos-manager.litmusChaosRunnerImage.image.repository | string | `"chaosnative/chaos-runner"` |  |
| chaos-manager.litmusChaosRunnerImage.image.tag | string | `"3.0.0-stable"` |  |
| chaos-manager.logWatcherImage.image.digest | string | `""` |  |
| chaos-manager.logWatcherImage.image.registry | string | `"docker.io"` |  |
| chaos-manager.logWatcherImage.image.repository | string | `"chaosnative/harness-chaos-log-watcher"` |  |
| chaos-manager.logWatcherImage.image.tag | string | `"release-chaos-log-watcher-0.8.0"` |  |
| chaos-manager.maxSurge | int | `1` |  |
| chaos-manager.maxUnavailable | int | `0` |  |
| chaos-manager.mongoSecrets.password.key | string | `"mongodb-root-password"` |  |
| chaos-manager.mongoSecrets.password.name | string | `"mongodb-replicaset-chart"` |  |
| chaos-manager.mongoSecrets.userName.key | string | `"mongodbUsername"` |  |
| chaos-manager.mongoSecrets.userName.name | string | `"harness-secrets"` |  |
| chaos-manager.nameOverride | string | `""` |  |
| chaos-manager.nodeSelector | object | `{}` |  |
| chaos-manager.parallelChaosExperimentRuns | string | `"500"` |  |
| chaos-manager.podAnnotations | object | `{}` |  |
| chaos-manager.podSecurityContext | object | `{}` |  |
| chaos-manager.replicaCount | int | `1` |  |
| chaos-manager.resources.limits.cpu | string | `"1500m"` |  |
| chaos-manager.resources.limits.memory | string | `"2048Mi"` |  |
| chaos-manager.resources.requests.memory | string | `"2048Mi"` |  |
| chaos-manager.securityContext | object | `{}` |  |
| chaos-manager.service.port | int | `8080` |  |
| chaos-manager.service.targetport | int | `8080` |  |
| chaos-manager.service.type | string | `"ClusterIP"` |  |
| chaos-manager.serviceAccount.annotations | object | `{}` |  |
| chaos-manager.serviceAccount.create | bool | `false` |  |
| chaos-manager.serviceAccount.name | string | `"harness-default"` |  |
| chaos-manager.skipSecureVerify | string | `"true"` |  |
| chaos-manager.subscriberImage.image.digest | string | `""` |  |
| chaos-manager.subscriberImage.image.registry | string | `"docker.io"` |  |
| chaos-manager.subscriberImage.image.repository | string | `"chaosnative/harness-smp-chaos-subscriber"` |  |
| chaos-manager.subscriberImage.image.tag | string | `"0.8.2"` |  |
| chaos-manager.tolerations | list | `[]` |  |
| chaos-manager.waitForInitContainer.image.digest | string | `""` |  |
| chaos-manager.waitForInitContainer.image.imagePullSecrets | list | `[]` |  |
| chaos-manager.waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| chaos-manager.waitForInitContainer.image.registry | string | `"docker.io"` |  |
| chaos-manager.waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| chaos-manager.waitForInitContainer.image.tag | string | `"latest"` |  |
| chaos-web.affinity | object | `{}` |  |
| chaos-web.autoscaling | object | `{}` |  |
| chaos-web.configmap | object | `{}` |  |
| chaos-web.enableCDN | string | `"false"` |  |
| chaos-web.fullnameOverride | string | `""` |  |
| chaos-web.image.digest | string | `""` |  |
| chaos-web.image.pullPolicy | string | `"Always"` |  |
| chaos-web.image.registry | string | `"docker.io"` |  |
| chaos-web.image.repository | string | `"chaosnative/harness-smp-chaos-web"` |  |
| chaos-web.image.tag | string | `"0.8.6"` |  |
| chaos-web.maxSurge | int | `1` |  |
| chaos-web.maxUnavailable | int | `0` |  |
| chaos-web.nameOverride | string | `""` |  |
| chaos-web.nodeSelector | object | `{}` |  |
| chaos-web.podAnnotations | object | `{}` |  |
| chaos-web.podSecurityContext | object | `{}` |  |
| chaos-web.replicaCount | int | `3` |  |
| chaos-web.resources.limits.cpu | string | `"250m"` |  |
| chaos-web.resources.limits.memory | string | `"256Mi"` |  |
| chaos-web.resources.requests.cpu | string | `"250m"` |  |
| chaos-web.resources.requests.memory | string | `"256Mi"` |  |
| chaos-web.securityContext | object | `{}` |  |
| chaos-web.service.port | int | `8184` |  |
| chaos-web.service.targetport | int | `8184` |  |
| chaos-web.service.type | string | `"ClusterIP"` |  |
| chaos-web.serviceAccount.annotations | object | `{}` |  |
| chaos-web.serviceAccount.create | bool | `false` |  |
| chaos-web.serviceAccount.name | string | `"harness-default"` |  |
| chaos-web.tolerations | list | `[]` |  |
| global.cd.enabled | bool | `true` | Enable to install CD |
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

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
