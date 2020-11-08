#!/bin/bash
# -----------------------------------------------------------------
# FileName: run.sh
# Date: 2020-11-08
# Author: jiftle
# Description: 
# -----------------------------------------------------------------
. ./config.cnf

# -------------- 启动脚本 ----------------
docker run -d \
    --name ${ContainerName} \
    -p 48080:80 \
    -v ~/Downloads:/usr/share/nginx/html:ro \
    ${DockerImageUrl}
