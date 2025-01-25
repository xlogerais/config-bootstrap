#!/bin/bash

BASEDIR=$(cd "$(dirname "$0")" && pwd)

for file in "${BASEDIR}"/os.d/*.bash; do
  bash "${file}"
done
