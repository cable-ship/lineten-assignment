{{- define "api.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{- define "api.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "api.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
