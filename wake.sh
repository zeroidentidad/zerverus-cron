#!/bin/bash

# ping when your job starts
ping -q -c4 zerverus-d418bf.us1.kinto.io

wake.sh

# ping when your job is finished
ping -q -c4 zerverus-d418bf.us1.kinto.io

# scheduling guide https://crontab.guru/