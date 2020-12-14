#!/bin/bash

# ping when your job starts
curl https://zerverus-d418bf.us1.kinto.io/api/extraviados?p=1

wake.sh

# ping when your job is finished
ping zerverus-d418bf.us1.kinto.io

# scheduling guide https://crontab.guru/