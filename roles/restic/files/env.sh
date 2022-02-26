#!/usr/bin/env bash

DEVENV_RESTIC_BIN="${DEVENV_ROOT}/restic/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/restic] restic version: $("${DEVENV_RESTIC_BIN}/restic" version --client)"
fi

if [[ -z "$DEVENV_RESTIC_SETUP" ]]; then
	export PATH="${DEVENV_RESTIC_BIN}:${PATH}"
fi
export DEVENV_RESTIC_SETUP=1
