# DIBBs Rstduio Server Helm Chart
A Helm chart for deploying an Rstudio Server intstance on DIBBs infrastructure.

## Values
Below is a table the values used to configure this chart.

| Value | Description | Default | Additional Information |
| ----- | ----------- | ------- | ---------------------- |
| `image.repository` | Name of the Docker Hub repository | `abf123` | Only the custom DIBBs repository is supported at this time |
| `image.name` | Name of the Rstudio image you want to deploy | `dibbs-psu` | Only the dibbs-psu image is supported at this time |
| `image.tag` | Image tag you want to deploy | `rstudio-alma8` | Only the rstudio-alma8 tag is supported at this time |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` | - |
| `resourcePrefix` | Prefix to apply to resource names and tags | `dibbs-user` | Cannot be changed |
| `replicaCount` | Define number of Rstudio Server pods running | `1` | Only 1 is supported at this time |
| `ingress.hostSuffix` | Define suffix for instance URL | `apps.dibbs-okd.cloud.icds.psu.edu` | - |
| `service.port` | Define port for service | `80` | - |
| `service.protocol` | Define protocol for instance service | `TCP` | - |
| `service.name` | Define name for instance service | `http` | As in /etc/services, not a name to apply to the resources |
| `container.port` | Define exposed container port | `8787` | This is the port exposed by the container |
| `container.mountPath` | Define mount path for attached persistent storage | `/home/dibbs-user` | Mounted in the home by the container user (dibbs-user) |