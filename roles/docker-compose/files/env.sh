#!/usr/bin/env bash

DEVENV_DOCKER_COMPOSE_BIN="${DEVENV_ROOT}/docker-compose/current"

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/docker-compose] docker-compose version: $("${DEVENV_DOCKER_COMPOSE_BIN}/docker-compose" --version)"
fi

if [[ -z "$DEVENV_DOCKER_COMPOSE_SETUP" ]]; then
	export PATH="${DEVENV_DOCKER_COMPOSE_BIN}:${PATH}"
fi
export DEVENV_DOCKER_COMPOSE_SETUP=1
