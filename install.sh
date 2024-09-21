#!/data/data/com.termux/files/usr/bin/bash

pkg update
pkg install -y expect curl wget openssh qemu-utils qemu-common qemu-system-aarch64-headless qemu-system-x86_64-headless

if [ ! -f "config.env" ]; then
    # get the default config file
    cp config.sample config.env
fi

source config.env

expect -f installqemu.expect

echo "to start your new vm:"
echo "  cd \$INSTALLATION_DIR && ./start-qemu.sh"

