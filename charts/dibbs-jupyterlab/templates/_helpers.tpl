{{- define "JUPYTERLAB.TOKEN" -}}
{{ randAlphaNum 64 }}
{{- end -}}

{{- define "JUPYTERLAB.INGRESSPREFIX" -}}
jlab-{{ randAlphaNum 8 | lower }}
{{- end -}}

{{- define "JUPYTERLAB.COMMAND" -}}
- /bin/bash
- -c
- |
  start.sh jupyter lab --ServerApp.token='{{ .Values.jlabToken }}' --ServerApp.password='' --debug --ServerApp.ip='0.0.0.0' --ServerApp.allow_remote_access='True' --ServerApp.allow_origin='*' --LabApp.allow_remote_access='True' --LabApp.allow_origin='*' --ServerApp.disable_check_xsrf='True'
{{- end -}}