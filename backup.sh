#!/bin/bash

echo
echo rsync backup script to frontroom PC
echo
echo "rsync of ~/vmware"
#rsync -av --checksum ~/vmware 192.168.1.15 --log-file=~/tmp/rsync-backup-log.txt
echo
echo "7z of ~/Documents ~/Pictures ~/Videos ~/Desktop /etc"
rm /tmp/stuff.7z >/dev/null 2>&1
7z a -t7z -p -r /tmp/stuff ~/Documents ~/Pictures ~/Videos ~/Desktop
# removed /etc from above
rsync -av /tmp/stuff.7z 192.168.1.15 --log-file=~/tmp/rsync-backup-log.txt

echo
pause
echo Running ~/c/myconfigs/build.sh
cd ~/c/myconfigs
bash ~/c/myconfigs/build.sh
cd ~
echo
pause
echo rsync of ~/c/myconfigs/mystuff.7z
rsync -av --checksum ~/c/myconfigs/mystuff.7z 192.168.1.15 --log-file=~/tmp/rsync-backup-log.txt

echo


