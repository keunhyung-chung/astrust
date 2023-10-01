#!/usr/bin/env bash
# Install pre-commit.
pre-commit install-hooks && pre-commit install && pre-commit gc

# Install hadolint.
mkdir "$HOME/bin"
curl -L -o "$HOME/bin/hadolint" https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64
chmod +x "$HOME/bin/hadolint"

# Check rust version.
rustc --version
