if declare -Ff after_install >/dev/null; then
  after_install install_default_packages
else
  echo "pyenv: pyenv-default-packages plugin requires pyenv v0.1.0 or later" >&2
fi

install_default_packages() {
  # Only install default packages after successfully installing Python.
  [ "$STATUS" = "0" ] || return 0

  if [ -f "${PYENV_ROOT}/default-packages" ]; then
    local args=( -r "${PYENV_ROOT}/default-packages" )

    # Invoke `gem install` in the just-installed Ruby. Point its
    # stdin to /dev/null or else it'll read from our default-packages
    # file.
    pyenv_VERSION="$VERSION_NAME" pyenv-exec pip install "${args[@]}" < /dev/null || {
      echo "pyenv: error installing gem \`$gem_name'"
    } >&2
  fi
}
