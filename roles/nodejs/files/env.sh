#!/usr/bin/env bash

DEVENV_NODEJS_BIN="${DEVENV_ROOT}/nodejs/current"
export NODE_PATH="${DEVENV_ROOT}/nodejs/nodepath/lib/node_modules"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/nodejs] nodejs version: $("${DEVENV_NODEJS_BIN}/bin/node" --version)"
fi

if [[ -z "${DEVENV_NODEJS_SETUP}" ]]; then
	export PATH="${DEVENV_ROOT}/nodejs/nodepath/bin:${DEVENV_NODEJS_BIN}/bin:${PATH}"
fi
export DEVENV_NODEJS_SETUP=1
