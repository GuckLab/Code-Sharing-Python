#!/bin/bash


for f in $(find -maxdepth 4 -name *.py); do

  # create a blank line for clearer debugging
  echo ""
  echo "File Location: $f"
  # create a requirements variable
  parentdir="$(dirname "$f")"
  echo "Parent Directory: $parentdir"
  # create a requirements variable
  req=$parentdir"/requirements.txt"
  echo "Requirements File: $req"
  # create venv
  python -m venv $parentdir/.venv
  # activate venv
  venvdir=$parentdir/.venv
  source $venvdir/Scripts/activate
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
