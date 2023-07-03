# {{- define "imagePullSecret" }}
# {{- with .Values.imageCredentials }}
# {{- printf "{\"auths\":{\"%s\":{\"username\":\"%s\",\"password\":\"%s\",\"email\":\"%s\",\"auth\":\"%s\"}}}" .registry .username .password .email (printf "%s:%s" .username .password | b64enc) | b64enc }}
# {{- end }}
# {{- end }}

##### Get server config
{{- define "getServers" }}
{{- range $index, $value := .servers }}
{{- if eq $index 0 }}
OPENAPI_SERVER_ONE_URL: {{ $value.url | quote }}
OPENAPI_SERVER_ONE_DESC: {{ $value.desc | quote }}
{{- else if eq $index 1 }}
OPENAPI_SERVER_TWO_URL: {{ $value.url | quote }}
OPENAPI_SERVER_TWO_DESC: {{ $value.desc | quote }}
{{- else if eq $index 2 }}
OPENAPI_SERVER_THREE_URL: {{ $value.url | quote }}
OPENAPI_SERVER_THREE_DESC: {{ $value.desc | quote }}
{{- else if eq $index 3 }}
OPENAPI_SERVER_FOUR_URL: {{ $value.url | quote }}
OPENAPI_SERVER_FOUR_DESC: {{ $value.desc | quote }}
{{- else if eq $index 4 }}
OPENAPI_SERVER_FIVE_URL: {{ $value.url | quote }}
OPENAPI_SERVER_FIVE_DESC: {{ $value.desc | quote }}
{{- end }}
{{- end }}
{{- end }}