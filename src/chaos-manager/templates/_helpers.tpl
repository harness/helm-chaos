{{/*
Expand the name of the chart.
*/}}
{{- define "chaos-manager.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "chaos-manager.fullname" -}}
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
{{- define "chaos-manager.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "chaos-manager.labels" -}}
helm.sh/chart: {{ include "chaos-manager.chart" . }}
{{ include "chaos-manager.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "chaos-manager.selectorLabels" -}}
app.kubernetes.io/name: {{ include "chaos-manager.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "chaos-manager.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "chaos-manager.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}


{{/*
Create the name of the subscriber image to use
*/}}
{{- define "chaos-manager.subscriberImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.subscriberImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the argoWorkflowController image to use
*/}}
{{- define "chaos-manager.argoWorkflowControllerImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.argoWorkflowControllerImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the argoWorkflowExecutorImage image to use
*/}}
{{- define "chaos-manager.argoWorkflowExecutorImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.argoWorkflowExecutorImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the litmusChaosOperatorImage image to use
*/}}
{{- define "chaos-manager.litmusChaosOperatorImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.litmusChaosOperatorImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the litmusChaosRunnerImage image to use
*/}}
{{- define "chaos-manager.litmusChaosRunnerImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.litmusChaosRunnerImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the litmusChaosExporterImage image to use
*/}}
{{- define "chaos-manager.litmusChaosExporterImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.litmusChaosExporterImage.image "global" .Values.global) }}
{{- end }}

{{/*
Create the name of the logWatcherImage image to use
*/}}
{{- define "chaos-manager.logWatcherImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.logWatcherImage.image "global" .Values.global) }}
{{- end }}

{{- define "chaos-manager.pullSecrets" -}}
{{ include "common.images.pullSecrets" (dict "images" (list .Values.image ) "global" .Values.global ) }}
{{- end -}}

