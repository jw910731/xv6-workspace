FROM ubuntu:jammy


RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential cmake git git-lfs hashalot gdb-multiarch qemu-system-misc gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install jq tmux unzip curl sudo

RUN DEBIAN_FRONTEND=noninteractive apt-get clean -y

EXPOSE 26000

RUN useradd -U -u 1000 -m user
USER user
