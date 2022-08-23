# DIBBs Ice Sheet Server Helm Chart
A Helm chart for deploying an Ice Sheet toolchain intstance on DIBBs infrastructure.

## Values
Below is a table the values used to configure this chart.

| Value | Description | Default | Additional Information |
| ----- | ----------- | ------- | ---------------------- |
| `image.repository` | Name of the Docker Hub repository | `abf123` | Only the custom DIBBs repository is supported at this time |
| `image.name` | Name of the Ice Sheet image you want to deploy | `dibbs-psu` | Only the dibbs-psu image is supported at this time |
| `image.tag` | Image tag you want to deploy | `icesheet-alma8` | Only the icesheet-alma8 tag is supported at this time |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` | - |
| `resourcePrefix` | Prefix to apply to resource names and tags | `dibbs-user` | Cannot be changed |
| `replicaCount` | Define number of Ice Sheet pods running | `1` | Only 1 is supported at this time |
| `container.mountPath` | Define mount path for attached persistent storage | `/home/dibbs-user` | Mounted in the home by the container user (dibbs-user) |