FROM debian:12.9-slim


RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential cmake git git-lfs hashalot gdb-multiarch qemu-system-misc gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install jq tmux unzip curl sudo gosu clangd zsh

RUN DEBIAN_FRONTEND=noninteractive apt-get clean -y

EXPOSE 26000

RUN useradd -U -u 1000 -G sudo -m -p "" -s "/bin/bash" user 
USER user
WORKDIR /home/user

COPY --chown=user:user ./gdbinit /home/user/.config/gdb/gdbinit
COPY --chown=user:user ./bashrc /home/user/.bashrc
