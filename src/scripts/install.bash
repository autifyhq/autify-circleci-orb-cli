#!/bin/bash
curl https://autify-cli-assets.s3.amazonaws.com/autify-cli/channels/stable/install-standalone.sh | bash

if [ "$PARAM_VERSION" != "stable" ]; then
  autify update -v $PARAM_VERSION
fi
