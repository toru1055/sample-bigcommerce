#!/usr/bin/env bash

PWD=`pwd`
NAME=`basename $PWD`
ngrok http -subdomain=$NAME 3000