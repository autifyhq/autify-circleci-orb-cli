#!/bin/bash
set -xe

: "${PARAM_SHELL_INSTALLER_URL:?"Provide the installer URL"}"

cd "${CIRCLE_WORKING_DIRECTORY/#\~/$HOME}"
export AUTIFY_CLI_INSTALL_USE_CACHE=1
curl -L "$PARAM_SHELL_INSTALLER_URL" | bash -xe

while IFS= read -r line; do
  echo "export PATH=$line:\$PATH" >> "$BASH_ENV"
done < "./autify/path"
