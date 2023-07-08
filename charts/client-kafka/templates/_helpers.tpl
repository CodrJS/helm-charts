# {{- define "imagePullSecret" }}
# {{- with .Values.imageCredentials }}
# {{- printf "{\"auths\":{\"%s\":{\"username\":\"%s\",\"password\":\"%s\",\"email\":\"%s\",\"auth\":\"%s\"}}}" .registry .username .password .email (printf "%s:%s" .username .password | b64enc) | b64enc }}
# {{- end }}
# {{- end }}

##### Get server config #####
{{- define "getKafkaClusters" }}
{{- range $index, $value := .kafkaClusters }}
KAFKA_CLUSTERS_{{$index}}_NAME: {{ $value.name }}
KAFKA_CLUSTERS_{{$index}}_BOOTSTRAPSERVERS:
  kafka-0.kafka-headless.{{ $value.name }}.svc.cluster.local:9092,
  kafka-1.kafka-headless.{{ $value.name }}.svc.cluster.local:9092,
  kafka-2.kafka-headless.{{ $value.name }}.svc.cluster.local:9092
KAFKA_CLUSTERS_{{$index}}_METRICS_PORT: "9308"
KAFKA_CLUSTERS_{{$index}}_SCHEMAREGISTRY: http://kafka-schema-registry.{{ $value.name }}.svc.cluster.local:8081
{{- end }}
{{- end }}