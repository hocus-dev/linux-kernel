Source of kernel config: https://github.com/firecracker-microvm/firecracker/issues/1721#issuecomment-1170232186

```bash
mkdir -p data
cd data
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.6.tar.xz
tar -xf linux-5.6.tar.xz
sudo apt-get update
sudo apt-get install build-essential libncurses-dev bison flex libssl-dev libelf-dev
cp ../kernel-config.txt linux-5.6/.config
make
```
