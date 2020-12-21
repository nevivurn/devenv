#!/usr/bin/env bash

DEVENV_PROTOC_PATH="${DEVENV_ROOT}/protoc/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/protoc] protoc version: $("${DEVENV_PROTOC_PATH}/bin/protoc" --version)"
fi

if [[ -z "$DEVENV_PROTOC_SETUP" ]]; then
	export PATH="${DEVENV_PROTOC_PATH}/bin:${PATH}"
fi
export PROTOC_INCLUDE="${DEVENV_PROTOC_PATH}/include"
export DEVENV_PROTOC_SETUP=1
