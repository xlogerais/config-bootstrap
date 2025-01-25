#!/bin/bash

BASEDIR=$(cd "$(dirname "$0")" && pwd)

for file in "${BASEDIR}"/tools.d/*.bash; do
  bash "${file}"
done
