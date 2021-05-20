#!/bin/bash
ssh -i ~/aws-personal.pem -o ConnectTimeout=30 -o ConnectionAttempts=4 -o StrictHostKeyChecking=no $1
