#!/usr/bin/env bash

DEVENV_YTDL_BIN="${DEVENV_ROOT}/ytdl/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/ytdl] ytdl version: $("${DEVENV_YTDL_BIN}/youtube-dl" --version)"
fi

if [[ -z "$DEVENV_YTDL_SETUP" ]]; then
	export PATH="${DEVENV_YTDL_BIN}:${PATH}"
fi
export DEVENV_YTDL_SETUP=1
