#!/usr/bin/env bash

DEVENV_HUGO_BIN="${DEVENV_ROOT}/hugo/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/hugo] hugo version: $("${DEVENV_HUGO_BIN}/hugo" version)"
fi

if [[ -z "$DEVENV_HUGO_SETUP" ]]; then
	export PATH="${DEVENV_HUGO_BIN}:${PATH}"
fi
export DEVENV_HUGO_SETUP=1
