#!/usr/bin/env bash

DEVENV_KUSTOMIZE_BIN="${DEVENV_ROOT}/kustomize/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/kustomize] kustomize version: $("${DEVENV_KUSTOMIZE_BIN}/kustomize" version)"
fi

if [[ -z "$DEVENV_KUSTOMIZE_SETUP" ]]; then
	export PATH="${DEVENV_KUSTOMIZE_BIN}:${PATH}"
fi
export DEVENV_KUSTOMIZE_SETUP=1
