Source of kernel config: https://github.com/firecracker-microvm/firecracker/issues/1721#issuecomment-1170232186

Options required for Firecracker's SendCtrlAltDel:
https://github.com/firecracker-microvm/firecracker/blob/2b8ad83629af511f918d616aa1c0d441e52c397a/docs/api_requests/actions.md#intel-and-amd-only-sendctrlaltdel

To build the kernel use
```bash
./build.sh
```
this will build vmlinux using docker. If you're building the kernel locally keep in mind that newer binutils are incompatible with linux 5.6, if having problems please use the `fix-build.patch` patch.
