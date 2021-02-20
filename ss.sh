#!/bin/bash
ssh -i ~/joshb.pem -o ConnectTimeout=30 -o ConnectionAttempts=4 -o StrictHostKeyChecking=no centos@$1
