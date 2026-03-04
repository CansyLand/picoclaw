#!/bin/bash
# Install picoclaw from public GitHub release (no login required)
set -e
REPO="CansyLand/picoclaw"
TAG="arm64-latest"
URL="https://github.com/${REPO}/releases/download/${TAG}/picoclaw-linux-arm64"
INSTALL_DIR="${HOME}/.local/bin"

echo "Downloading picoclaw from ${URL} ..."
if ! curl -sSL -f -o /tmp/picoclaw-linux-arm64 "${URL}"; then
  echo "Download failed. Has the build workflow run? See: https://github.com/${REPO}/actions"
  exit 1
fi

echo "Installing to ${INSTALL_DIR}/picoclaw"
mkdir -p "${INSTALL_DIR}"
mv /tmp/picoclaw-linux-arm64 "${INSTALL_DIR}/picoclaw"
chmod +x "${INSTALL_DIR}/picoclaw"

echo "Done! picoclaw is installed. Run: picoclaw --help"
