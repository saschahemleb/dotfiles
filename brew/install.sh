#!/usr/bin/env bash

if [[ ! $(which brew) ]]; then
    /usr/bin/env bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi