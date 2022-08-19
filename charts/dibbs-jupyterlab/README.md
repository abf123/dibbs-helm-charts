# DIBBs JupyterLab Helm Chart
A Helm chart for deploying a JupyterLab intstance on DIBBs infrastructure.

## Values
Below is a table the values used to configure this chart.

| Value | Description | Default | Additional Information |
| ----- | ----------- | ------- | ---------------------- |
| `image.repository` | Name of the Docker Hub repository | `jupyter` | Only the official Jupyter repository is supported at this time |
| `image.name` | Name of the Jupyter image you want to deploy | `datascience-notebook` | Can be any image containing a JupyterLab deployment from the [Jupyter DockerHub repository](https://hub.docker.com/u/jupyter/) |
| `image.tag` | Image tag you want to deploy | `lab-3.4.5` | Can be any available tag for the chosen image name listed on the image tags page (i.e. [datascience-notebook](https://hub.docker.com/r/jupyter/datascience-notebook/tags)) |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` | - |
| `resourcePrefix` | Prefix to apply to resource names and tags | `dibbs-user` | Cannot be changed |
| `replicaCount` | Define number of Jupyter pods running | `1` | Only 1 is supported at this time |
| `ingress.hostSuffix` | Define suffix for instance URL | `apps.dibbs-okd.cloud.icds.psu.edu` | - |
| `service.port` | Define port for service | `80` | - |
| `service.protocol` | Define protocol for instance service | `TCP` | - |
| `service.name` | Define name for instance service | `http` | As in /etc/services, not a name to apply to the resources |
| `container.port` | Define exposed container port | `8888` | This is the port exposed by the container |
| `container.mountPath` | Define mount path for attached persistent storage | `/home/jovyan` | Mounted in the home by the container user (jovyan) |