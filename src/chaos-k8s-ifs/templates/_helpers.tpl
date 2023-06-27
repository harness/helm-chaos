{{/*
Expand the name of the chart.
*/}}
{{- define "chaos-k8s-ifs.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "chaos-k8s-ifs.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "chaos-k8s-ifs.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "chaos-k8s-ifs.labels" -}}
helm.sh/chart: {{ include "chaos-k8s-ifs.chart" . }}
{{ include "chaos-k8s-ifs.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "chaos-k8s-ifs.selectorLabels" -}}
app.kubernetes.io/name: {{ include "chaos-k8s-ifs.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "chaos-k8s-ifs.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "chaos-k8s-ifs.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "chaos-k8s-ifs.pullSecrets" -}}
{{ include "common.images.pullSecrets" (dict "images" (list .Values.image ) "global" .Values.global ) }}
{{- end -}}
{{/*
Create the name of the subscriber image to use
*/}}
{{- define "chaos-k8s-ifs.subscriberImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.subscriberImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the argoWorkflowController image to use
*/}}
{{- define "chaos-k8s-ifs.argoWorkflowControllerImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.argoWorkflowControllerImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the argoWorkflowExecutorImage image to use
*/}}
{{- define "chaos-k8s-ifs.argoWorkflowExecutorImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.argoWorkflowExecutorImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the litmusChaosOperatorImage image to use
*/}}
{{- define "chaos-k8s-ifs.litmusChaosOperatorImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.litmusChaosOperatorImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the litmusChaosRunnerImage image to use
*/}}
{{- define "chaos-k8s-ifs.litmusChaosRunnerImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.litmusChaosRunnerImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the litmusChaosExporterImage image to use
*/}}
{{- define "chaos-k8s-ifs.litmusChaosExporterImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.litmusChaosExporterImage.image "global" .Values.global) }}
{{- end }}
