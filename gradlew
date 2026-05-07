#!/usr/bin/env sh
set -e
GRADLE_VERSION=8.9
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
ZIP_FILE="/tmp/gradle-${GRADLE_VERSION}-bin.zip"
GRADLE_DIR="/tmp/gradle-${GRADLE_VERSION}"
if [ ! -x "$GRADLE_DIR/bin/gradle" ]; then
  echo "Downloading Gradle ${GRADLE_VERSION}..."
  curl -L -o "$ZIP_FILE" "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"
  unzip -q "$ZIP_FILE" -d /tmp
fi
exec "$GRADLE_DIR/bin/gradle" "$@"
