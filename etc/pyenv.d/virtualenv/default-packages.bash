#!/usr/bin/env bash
source "${BASH_SOURCE[0]%/*}/../../../libexec/default-packages.sh"

if declare -Ff after_virtualenv >/dev/null; then
  after_virtualenv "install_default_packages $VIRTUALENV_NAME"
else
  echo "pyenv: pyenv-default-packages plugin requires pyenv-virtualenv v20130527 or later" >&2
fi
