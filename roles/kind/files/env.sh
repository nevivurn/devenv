#!/usr/bin/env bash

DEVENV_KIND_BIN="${DEVENV_ROOT}/kind/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/kind] kind version: $("${DEVENV_KIND_BIN}/kind" version)"
fi

if [[ -z "$DEVENV_KIND_SETUP" ]]; then
	export PATH="${DEVENV_KIND_BIN}:${PATH}"
fi
export DEVENV_KIND_SETUP=1
