#!/bin/bash
set -e

function pack() {
  REPO=$1
  cd ./$REPO
  zip -rq $REPO.zip ./*
  mv ./*.zip ../
  cd ../
}

function bulk() {
  for param in "$@"; do
    pack ${param}
  done
}
repos=(
MemToolkitNX
MHR
mhz
stress-nx
UltraCam
)

bulk ${repos[@]}