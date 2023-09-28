#!/usr/bin/env bash
# Install pre-commit.
pre-commit gc && pre-commit install-hooks && pre-commit install

# Check rust version.
rustc --version
