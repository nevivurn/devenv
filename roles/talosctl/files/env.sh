#!/usr/bin/env bash

DEVENV_TALOSCTL_BIN="${DEVENV_ROOT}/talosctl/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/talosctl] talosctl version: $("${DEVENV_TALOSCTL_BIN}/talosctl" version --client)"
fi

if [[ -z "$DEVENV_TALOSCTL_SETUP" ]]; then
	export PATH="${DEVENV_TALOSCTL_BIN}:${PATH}"
fi
export DEVENV_TALOSCTL_SETUP=1

source <(talosctl completion bash)
