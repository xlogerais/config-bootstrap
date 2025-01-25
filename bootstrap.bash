#!/bin/bash

BASEDIR=$(cd "$(dirname "$0")" && pwd)

bash "${BASEDIR}/os.bash"
bash "${BASEDIR}/tools.bash"
bash "${BASEDIR}/fonts.bash"
bash "${BASEDIR}/config.bash"
