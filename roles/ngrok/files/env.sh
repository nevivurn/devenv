#!/usr/bin/env bash

DEVENV_NGROK_PATH="${DEVENV_ROOT}/ngrok"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/ngrok] ngrok version: $("${DEVENV_NGROK_PATH}/bin/ngrok" --version)"
fi

if [[ -z "$DEVENV_NGROK_SETUP" ]]; then
	export PATH="${DEVENV_NGROK_PATH}/bin:${PATH}"
fi
export DEVENV_NGROK_SETUP=1
