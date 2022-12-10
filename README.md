Source of kernel config: https://github.com/firecracker-microvm/firecracker/issues/1721#issuecomment-1170232186

```bash
mkdir -p data
cd data
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.6.tar.xz
tar -xf linux-5.6.tar.xz
sudo apt-get update
sudo apt-get install -y build-essential libncurses-dev bison flex libssl-dev libelf-dev
cp ../kernel-config.txt linux-5.6/.config
cd linux-5.6
make vmlinux
```

Note: compiling worked on Gitpod, but not on my local machine.
Options required for Firecracker's SendCtrlAltDel:
https://github.com/firecracker-microvm/firecracker/blob/2b8ad83629af511f918d616aa1c0d441e52c397a/docs/api_requests/actions.md#intel-and-amd-only-sendctrlaltdel
