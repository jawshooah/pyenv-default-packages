#!/bin/env sh
install_default_packages() {
  # Only install default packages after successfully installing Python.
  [ "$STATUS" = "0" ] || return 0

  local installed_version requirements_file args

  installed_version=$1
  requirements_file=${PYENV_ROOT}/default-packages

  if [ -f "$requirements_file" ]; then
    args=( -r "$requirements_file" )

    # Invoke `pip install` in the just-installed Python.
    PYENV_VERSION="$installed_version" pyenv-exec pip install "${args[@]}" || {
      echo "pyenv: error installing packages from  \`$requirements_file'"
    } >&2
  fi
}
