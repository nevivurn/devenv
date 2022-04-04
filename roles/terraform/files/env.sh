#!/usr/bin/env bash

DEVENV_TERRAFORM_BIN="${DEVENV_ROOT}/terraform/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/terraform] terraform version: $("${DEVENV_TERRAFORM_BIN}/terraform" version)"
fi

if [[ -z "$DEVENV_TERRAFORM_SETUP" ]]; then
	export PATH="${DEVENV_TERRAFORM_BIN}:${PATH}"
fi
export DEVENV_TERRAFORM_SETUP=1

complete -C "${DEVENV_TERRAFORM_BIN}/terraform" terraform
