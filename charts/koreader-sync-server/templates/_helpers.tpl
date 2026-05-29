{{- define "koreader-sync-server.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "koreader-sync-server.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := include "koreader-sync-server.name" . }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{- define "koreader-sync-server.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "koreader-sync-server.labels" -}}
helm.sh/chart: {{ include "koreader-sync-server.chart" . | quote }}
app.kubernetes.io/name: {{ include "koreader-sync-server.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end }}

{{- define "koreader-sync-server.selectorLabels" -}}
app.kubernetes.io/name: {{ include "koreader-sync-server.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end }}

{{- define "koreader-sync-server.image" -}}
{{- $tag := default .Chart.AppVersion .Values.image.tag -}}
{{- if hasPrefix "@" $tag -}}
{{- printf "%s%s" .Values.image.repository $tag -}}
{{- else -}}
{{- printf "%s:%s" .Values.image.repository $tag -}}
{{- end -}}
{{- end }}

{{- define "koreader-sync-server.dataRedisClaimName" -}}
{{- if .Values.persistence.dataRedis.existingClaim -}}
{{- .Values.persistence.dataRedis.existingClaim -}}
{{- else -}}
{{- printf "%s-data-redis" (include "koreader-sync-server.fullname" .) -}}
{{- end -}}
{{- end }}
