#!/bin/bash


for f in $(find . -maxdepth 4 -name *.py); do

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
  venvdir=$parentdir/.venv
  python -m venv $venvdir
  # check what OS is being used and activate venv accordingly
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
          source $venvdir/bin/activate
  elif [[ "$OSTYPE" == "darwin"* ]]; then
          source $venvdir/bin/activate
  elif [[ "$OSTYPE" == "cygwin" ]]; then
          source $venvdir/bin/activate
  elif [[ "$OSTYPE" == "msys" ]]; then
          source $venvdir/Scripts/activate
  elif [[ "$OSTYPE" == "win32" ]]; then
          source $venvdir/Scripts/activate
  elif [[ "$OSTYPE" == "freebsd"* ]]; then
          source $venvdir/bin/activate
  else
          echo "OS-type unknown!"
  fi
  echo "OS-type is: $OSTYPE"

  # for debugging, check if pip is called from correct venv
  pip -V
  # install req
  pip install -r $req
  pip freeze
  # run python script
  python $f
  # deactivate and remove venv
  echo "Deactivating and Removing venv"
  deactivate
  rm -r $venvdir

done
