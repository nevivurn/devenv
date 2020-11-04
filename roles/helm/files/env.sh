#!/usr/bin/env bash

DEVENV_HELM_BIN="${DEVENV_ROOT}/helm/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/helm] helm version: $("${DEVENV_HELM_BIN}/helm" version)"
fi

if [[ -z "$DEVENV_HELM_SETUP" ]]; then
	export PATH="${DEVENV_HELM_BIN}:${PATH}"
fi
export DEVENV_HELM_SETUP=1

source <(helm completion bash)
