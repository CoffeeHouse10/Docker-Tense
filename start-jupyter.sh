#!/bin/sh
jupyter lab \
  --ip=0.0.0.0 \
  --no-browser \
  --allow-root \
  --LabApp.password="$JUPYTER_PASSWORD_HASH" \
  --LabApp.notebook_dir=/app