#!/data/data/com.termux/files/usr/bin/bash

qemu-system-aarch64 \
    -machine virt \
    -cpu cortex-a72 \
    -m 2048 \
    -smp 8 \
    -drive if=pflash,format=raw,read-only=on,file=$PREFIX/share/qemu/edk2-aarch64-code.fd \
    -netdev user,id=n1,dns=8.8.8.8,hostfwd=tcp::2222-:22 \
    -device virtio-net,netdev=n1 \
    -cdrom alpine-virt-3.20.3-aarch64.iso \
    -nographic \
    alpine.img