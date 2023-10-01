#!/usr/bin/env bash
# Install pre-commit.
pre-commit install-hooks && pre-commit install && pre-commit gc

# Install hadolint.
mkdir -p "$HOME/.local/bin"
curl -L -o "$HOME/.local/bin/hadolint" https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64
chmod +x "$HOME/.local/bin/hadolint"

# Check rust version.
rustc --version
