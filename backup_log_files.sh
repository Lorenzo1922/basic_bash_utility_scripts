#!/bin/bash
find /var/log -type f -maxdepth 1 | grep "log.[1-6]$" > /tmp/tempfile
for filename in $(cat /tmp/tempfile)
do
    gzip $filename
done
