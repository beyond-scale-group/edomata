#!/usr/bin/env bash
# Decide which artifacts a push to main changes, from the files it touched.
#
# Usage: detect-changes.sh <before-sha> <after-sha>
# Prints two lines, "scala=true|false" and "rust=true|false".
#
# A push counts as a Scala change when it touches the sources of a published
# Scala module (modules/*/src/main, excluding the test-only modules
# backend-tests and e2e) or the build (build.sbt, project/).
# A push counts as a Rust change when it touches a published crate (src/,
# Cargo.toml or README.md under rust/crates, excluding the test-only crates
# edomata-backend-tests and edomata-e2e) or the workspace rust/Cargo.toml.
# Tests, docs, examples, the book, website and CI files never count.
set -euo pipefail

before=${1:-}
after=${2:?usage: detect-changes.sh <before-sha> <after-sha>}

# A new branch or an unknown "before" (all zeros, force push): compare with the
# parent commit instead.
if [ -z "$before" ] || [ "$before" = "0000000000000000000000000000000000000000" ] ||
  ! git cat-file -e "${before}^{commit}" 2>/dev/null; then
  before="${after}^"
fi

files=$(git diff --name-only "$before" "$after")

scala=false
if printf '%s\n' "$files" |
  grep -E '^(build\.sbt$|project/|modules/.+/src/main/)' |
  grep -Ev '^modules/(backend-tests|e2e)/' |
  grep -q .; then
  scala=true
fi

rust=false
if printf '%s\n' "$files" |
  grep -E '^rust/(Cargo\.toml$|crates/[^/]+/(src/|Cargo\.toml$|README\.md$))' |
  grep -Ev '^rust/crates/(edomata-backend-tests|edomata-e2e)/' |
  grep -q .; then
  rust=true
fi

echo "scala=$scala"
echo "rust=$rust"
