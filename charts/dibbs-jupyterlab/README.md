# DIBBs JupyterLab Helm Chart
A Helm chart for deploying a JupyterLab intstance on DIBBs infrastructure.

## Values
Below is a table the values used to configure this chart.

| Value | Description | Default | Additional Information |
| ----- | ----------- | ------- | ---------------------- |
| `image.name` | Name of the Jupyter image you want to deploy | `datascience-notebook` | Pulled from the [Jupyter DockerHub repository](https://hub.docker.com/u/jupyter/) |
| `image.tag` | Image tag you want to deploy | `lab-3.4.5` | - |
