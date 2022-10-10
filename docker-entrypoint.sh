#!/bin/bash
set -e

echo "Starting OnCrawl export"

for var in FTP_USER FTP_PASSWORD ; do
   if [[ -z "${!var}" ]]; then
       echo "Environment variable ${var} must be set"
       exit 1
   fi
done


echo "* Uploading files to /logs"
ncftpput -u $FTP_USER -p $FTP_PASSWORD ftp.oncrawl.com /logs/ out/* 2>&1
