#!/usr/bin/env bash

. ~/conda/cccd-rust-playground/bootstrap/rust-activate.sh

cargo clean

LIBARCHIVE_LIB_DIR=${CONDA_PREFIX}/lib \
LIBARCHIVE_INCLUDE_DIR=${CONDA_PREFIX}/include \
LIBARCHIVE_LDFLAGS="-Bstatic -L${CONDA_PREFIX}/lib -llzo2 -llzma -llz4 -lcharset -lbz2 -lz -lxml2 -Bdynamic
" \
LIBARCHIVE_STATIC=true \
  cargo build -v
