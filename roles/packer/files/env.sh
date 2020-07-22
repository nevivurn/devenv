#!/usr/bin/env bash

DEVENV_PACKER_BIN="${DEVENV_ROOT}/packer/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/packer] packer version: $("${DEVENV_PACKER_BIN}/packer" version)"
fi

if [[ -z "${DEVENV_PACKER_SETUP}" ]]; then
	export PATH="${DEVENV_PACKER_BIN}:${PATH}"
fi
export DEVENV_PACKER_SETUP=1
