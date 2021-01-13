#!/bin/bash

# when your job starts
curl https://zerverus-d418bf.us1.kinto.io/api/estatus/test
ping zerverus-d418bf.us1.kinto.io

wake.sh

# ping when your job is finished
curl https://zerverus-d418bf.us1.kinto.io/api/estatus/test
ping zerverus-d418bf.us1.kinto.io

# scheduling guide https://crontab.guru/