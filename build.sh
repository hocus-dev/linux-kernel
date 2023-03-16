#!/bin/sh

docker build -t hocus-linux-kernel .
id=$(docker create hocus-linux-kernel /)
docker cp $id:/vmlinux - | tar x -O > vmlinux
docker rm -v $id
