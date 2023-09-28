#!/usr/bin/env bash
# Install pre-commit.
pre-commit install-hooks && pre-commit install && pre-commit gc

# Check rust version.
rustc --version
