#!/bin/bash

for file in config.d/*.bash
do
  bash $file
done

