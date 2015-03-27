#!/usr/bin/env bash
source "${BASH_SOURCE[0]%/*}/../../../libexec/default-packages.sh"

if declare -Ff after_install >/dev/null; then
  after_install "install_default_packages $VERSION_NAME"
else
  echo "pyenv: pyenv-default-packages plugin requires pyenv v0.1.0 or later" >&2
fi
