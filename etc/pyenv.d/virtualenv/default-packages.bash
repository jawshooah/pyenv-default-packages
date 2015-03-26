if declare -Ff after_virtualenv >/dev/null; then
  after_virtualenv install_default_packages
else
  echo "pyenv: pyenv-default-packages plugin requires pyenv-virtualenv v20130527 or later" >&2
fi

install_default_packages() {
  # Only install default packages after successfully installing Python.
  [ "$STATUS" = "0" ] || return 0

  local requirements_file=${PYENV_ROOT}/default-packages

  if [ -f "$requirements_file" ]; then
    local args=( -r "$requirements_file" )

    # Invoke `pip install` in the just-installed Python.
    PYENV_VERSION="$VIRTUALENV_NAME" pyenv-exec pip install "${args[@]}" || {
      echo "pyenv: error installing packages from  \`$requirements_file'"
    } >&2
  fi
}
