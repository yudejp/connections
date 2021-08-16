#!/bin/bash
gzip=/usr/bin/gzip

PATH=/mnt/gdrive2/データ/GSuite/4_Backup/mastodon
FOLDER=$(/usr/bin/date '+%Y-%m')
FILENAME=$(/usr/bin/date '+%Y%m%d_%H%M%S')

/usr/bin/mkdir -p $PATH/$FOLDER

/usr/bin/tar -cf $FILENAME.tar /home/yude/docker-compose/mastodon
/usr/bin/gzip $FILENAME.tar

/usr/bin/mv $FILENAME.tar.gz $PATH/$FOLDER/
