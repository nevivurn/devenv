#!/usr/bin/env bash

DEVENV_GCLOUD_BIN="${DEVENV_ROOT}/gcloud/current/bin"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/gcloud] gcloud version: $("${DEVENV_GCLOUD_BIN}/gcloud" version)"
fi

source "${DEVENV_ROOT}/gcloud/current/completion.bash.inc"
if [[ -z "$DEVENV_GCLOUD_SETUP" ]]; then
	export PATH="${DEVENV_GCLOUD_BIN}:${PATH}"
fi
export DEVENV_GCLOUD_SETUP=1
