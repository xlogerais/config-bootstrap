#!/bin/bash

BASEDIR=$(cd "$(dirname "$0")" && pwd)

for file in "${BASEDIR}"/config.d/*.bash; do
  bash "${file}"
done
