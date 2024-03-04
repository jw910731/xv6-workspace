# xv6 workspace

This repository provide dev container environment to quickly get started with xv6-riscv development. For a list of viable options that supports dev container, please see [here](https://containers.dev/supporting).

# Quick start with Visual Studio Code
Clone the container repository and xv6 source code into current working direcotry.
```bash
git clone --recursive https://github.com/jw910731/xv6-workspace.git
```

Open this directory with Visual Studio Code with command or open manually.
```bash
cd xv6-workspace
code .
```

If you had correctly install the [dev container extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers), then the following popup should appear at the bottom right of the Visual Studio Code.
![Popup at the right bottom of Visual Studio Code](/img/open-in-vscode.png)
Option "Reopen in Container" is recommended, since it binds the whole directory into the container and modification outside is visible instantly inside container.

In case you know what you are doing or encounter performance issue related to disk I/O, choose "Clone in Volume".

# Popular Options

## Visual Studio Code
Stated in the quick start section above.

## DevPod
Use [DevPod](https://devpod.sh/) if you dislike VS Code.(~~Who dislike VS Code??~~)

# Customize container setup

If you need to add more packages to this dev container environment, add a new Dockerfile in `.devcontainer` and change the `.devcontainer/devcontainer.json` to use your Dockerfile.

In the new Dockerfile, use `ghcr.io/jw910731/xv6-workspace` as base image and feel free to add any tool you like to your environment.
