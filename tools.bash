#!/bin/bash

for file in tools.d/*.bash
do
  bash $file
done
