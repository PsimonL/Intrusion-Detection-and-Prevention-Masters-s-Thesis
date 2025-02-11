#! /bin/bash

# To generate keys to later copy it by hand
ssh-keygen -t ed25519 -C "your_email@example.com"

# To add ssh public key to remote host 
ssh-copy-id user@remote_server