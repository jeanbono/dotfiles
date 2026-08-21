#!/usr/bin/env bash

SRC="$(cd "$(dirname "$0")" && pwd)/allowed_signers"
DST="$HOME/.config/git/allowed_signers"

mkdir -p "$HOME/.config/git"

if [ ! -L "$DST" ]; then
  ln -s "$SRC" "$DST"
  echo "linked $SRC to $DST"
fi
