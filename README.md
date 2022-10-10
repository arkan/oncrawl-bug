# oncrawl-bug

Somehow the FTP upload process doesn't work anymore when we try to upload a lot of files. 
Eventually we get the following error message:
```
Passive mode refused.
ncftpput out/ED18BQ0U850WT.2022-09-29-08.bfc3df7c.log.gz: PORT failed.
Remote host has closed the connection.
ncftpput out/ED18BQ0U850WT.2022-09-29-08.cc49eb96.log.gz: remote host closed control connection.
```

## How to reproduce 

1. `docker build -t=oncrawl .`
2. `mkdir out` 
3. put a lot of files in the `out` directory (> 100 files) 
4. `docker run --rm -it -e FTP_USER=${FTP_USER} -e FTP_PASSWORD=${FTP_PASSWORD} oncrawl`



