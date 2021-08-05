#!/bin/bash


for f in $(find -maxdepth 4 -name *.py); do

  # create a blank line for clearer debugging
  echo ""
  echo $f
  # create a requirements variable
  parentdir="$(dirname "$f")"
  echo $parentdir
  # create a requirements variable
  req=$parentdir"/requirements.txt"
  echo $req
  # create venv
  python -m venv .venv
  # activate venv
  source .venv/bin/activate
  # for debugging, check if pip is called from venv
  pip -V
  # install req
  pip install -r $req
  # run python script
  python $f
  # deactivate venv
  deactivate
  # remove the venv
  rm -r $venvdir

done