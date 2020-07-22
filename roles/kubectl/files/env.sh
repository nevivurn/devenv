#!/usr/bin/env bash

DEVENV_KUBECTL_BIN="${DEVENV_ROOT}/kubectl/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/kubectl] kubectl version: $("${DEVENV_KUBECTL_BIN}/kubectl" version --client)"
fi

if [[ -z "$DEVENV_KUBECTL_SETUP" ]]; then
	export PATH="${DEVENV_KUBECTL_BIN}:${PATH}"
fi
export DEVENV_KUBECTL_SETUP=1
