#!/bin/sh

docker build -t hocus-linux-kernel .
id=$(docker create hocus-linux-kernel /)
docker cp $id:/vmlinux - | tar x -O > vmlinux-6.2-x86_64.bin
docker rm -v $id
strip --strip-all vmlinux-6.2-x86_64.bin
