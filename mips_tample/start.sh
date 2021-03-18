#!/bin/sh
# Add your startup script

# DO NOT DELETE
echo "socat tcp-listen:9999,reuseaddr,fork EXEC:/home/pwn/run.sh,pty,raw,echo=0;" |su - pwn 
sleep infinity;
