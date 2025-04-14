#Helper Function to get cluster name with a default value if nothing is found
{{- define "dynamic.clusterName" -}}
{{- with (index (lookup "v1" "Node" "" "").items 0).metadata.annotations }}
{{- index . "cluster.x-k8s.io/cluster-name" | default "allure" }}
{{- end }}
{{- end }}
