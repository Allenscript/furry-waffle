#!/bin/bash

user='which name u like'
if id -u $user >/dev/null 2>&1; then
        exist=1
else
        useradd $user -p $user
fi
su - $user <<EOF
echo 'exec what u want to did with normal permissons';
exit;
EOF
