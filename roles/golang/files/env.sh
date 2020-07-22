#!/usr/bin/env bash

export GOROOT="${DEVENV_ROOT}/golang/current"
export GOPATH="${DEVENV_ROOT}/golang/gopath"
export GO111MODULE=on

if [[ -n "${DEVENV_DEBUG}" ]]; then
	echo "[devenv/golang] golang version: $("${GOROOT}/bin/go" version)"
fi

if [[ -z "${DEVENV_GOLANG_SETUP}" ]]; then
	export PATH="${GOPATH}/bin:${GOROOT}/bin:${PATH}"
fi
export DEVENV_GOLANG_SETUP=1
