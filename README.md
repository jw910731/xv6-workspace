# xv6 workspace 
This repository provide dev container environment to quickly get started with xv6-riscv development. For a list of viable options that supports dev container, please see [here](https://containers.dev/supporting).

# Popular Options
## Visual Studio Code
Use VS Code [dev container extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) to get started.

## DevPod
Use [DevPod](https://devpod.sh/) if you dislike VS Code.(~~Who dislike VS Code??~~)

# Customize container setup
If you need to add more packages to this dev container environment, add a new Dockerfile in `.devcontainer` and change the `.devcontainer/devcontainer.json` to use your Dockerfile.

In the new Dockerfile, use `ghcr.io/jw910731/xv6-workspace` as base image and feel free to add any tool you like to your environment.
