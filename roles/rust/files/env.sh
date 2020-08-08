#!/usr/bin/env bash

export CARGO_HOME="${DEVENV_ROOT}/rust/cargo"
export RUSTUP_HOME="${DEVENV_ROOT}/rust/rustup"

if [[ -z "${DEVENV_RUST_SETUP}" ]]; then
	export PATH="${DEVENV_ROOT}/rust/init:${CARGO_HOME}/bin:${PATH}"
fi
export DEVENV_RUST_SETUP=1
