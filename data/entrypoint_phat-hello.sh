#!/bin/bash

if [ -d /root/contracts/phat-hello ]
then
    echo 'phat-hello already exists'
else
    cd /root/contracts
    git clone https://github.com/Phala-Network/phat-hello
    cd /root/contracts/phat-hello
    cargo +nightly contract build
    cargo +nightly test -- --nocapture
fi
