#!/usr/bin/env bash

DEVENV_ISTIOCTL_BIN="${DEVENV_ROOT}/istioctl/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/istioctl] istioctl version: $("${DEVENV_ISTIOCTL_BIN}/bin/istioctl" version)"
fi

if [[ -z "${DEVENV_ISTIOCTL_SETUP}" ]]; then
	export PATH="${DEVENV_ROOT}/istioctl/istioctl/bin:${DEVENV_ISTIOCTL_BIN}/bin:${PATH}"
fi
export DEVENV_ISTIOCTL_SETUP=1
