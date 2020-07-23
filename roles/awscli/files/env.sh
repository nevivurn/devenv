#!/usr/bin/env bash

DEVENV_AWSCLI_BIN="${DEVENV_ROOT}/awscli/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/awscli] awscli version: $("${DEVENV_AWSCLI_BIN}/aws" --version)"
fi

complete -C "${DEVENV_AWSCLI_BIN}/aws_completer" aws
if [[ -z "$DEVENV_AWSCLI_SETUP" ]]; then
	export PATH="${DEVENV_AWSCLI_BIN}:${PATH}"
fi
export DEVENV_AWSCLI_SETUP=1
