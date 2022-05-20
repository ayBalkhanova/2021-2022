#!/bin/bash
name='backup.sh'
mkdir ~/backup
zip -r backup.zip ${name}
mv backup.zip ~/backup
