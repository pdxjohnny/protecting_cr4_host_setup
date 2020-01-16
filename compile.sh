#!/usr/bin/env bash

sudo time make -j $(($(nproc)*4))
sudo make -j $(($(nproc)*4)) modules_install
sudo make install
