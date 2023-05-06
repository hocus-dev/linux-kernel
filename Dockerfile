FROM ubuntu:22.04 AS builder

WORKDIR /build

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  curl \
  wget \
  bc \
  build-essential \
  libncurses-dev \
  bison \
  flex \
  libssl-dev \
  libelf-dev \
  && rm -rf /var/lib/apt/lists/*
RUN wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.2.tar.xz
RUN tar xf linux-6.2.tar.xz
## For it to build on too new binutils
COPY fix-build.patch .
COPY kernel-config.txt linux-6.2/.config
RUN cd linux-6.2 && make -j8 vmlinux

FROM scratch
COPY --from=builder /build/linux-6.2/vmlinux /vmlinux

