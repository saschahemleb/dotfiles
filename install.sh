#!/usr/bin/env bash

# Minimap setup, then hand off to bin/dotfiles

set -Eeuo pipefail

"$(dirname "$0")/bin/dotfiles" update