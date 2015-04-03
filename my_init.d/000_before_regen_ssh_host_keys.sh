#!/bin/bash

if [[ ! -e /etc/service/sshd/down && ! -e /home/box/etc/ssh/sshd_config ]] || [[ "$1" == "-f" ]]; then
    cp -R /etc/ssh.default/* /home/box/etc/ssh/
fi