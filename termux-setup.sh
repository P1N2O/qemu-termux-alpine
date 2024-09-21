#!/data/data/com.termux/files/usr/bin/bash

export REPO_URL=https://github.com/P1N2O/qemu-termux-apline.git
export BRANCH=main

pkg update -y
pkg install -y git

git clone "${REPO_URL}"
cd qemu-termux-apline
git checkout "${BRANCH}"

./install.sh
