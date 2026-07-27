#!/bin/bash
#
# backup.sh — archive a directory with a timestamped filename and
# rotate backups older than a retention window.
#
# Usage: ./backup.sh /path/to/source /path/to/backup-dir [retention_days]

set -euo pipefail

SRC="${1:?Usage: $0 <source_dir> <backup_dir> [retention_days]}"
DEST_DIR="${2:?Usage: $0 <source_dir> <backup_dir> [retention_days]}"
RETENTION_DAYS="${3:-7}"

mkdir -p "$DEST_DIR"

TIMESTAMP="$(date +%F_%H-%M-%S)"
ARCHIVE_NAME="backup-$(basename "$SRC")-${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${DEST_DIR}/${ARCHIVE_NAME}"

echo "Backing up '${SRC}' -> '${ARCHIVE_PATH}'"
tar -czf "$ARCHIVE_PATH" -C "$(dirname "$SRC")" "$(basename "$SRC")"
echo "Backup complete: ${ARCHIVE_PATH}"

echo "Removing backups older than ${RETENTION_DAYS} days..."
find "$DEST_DIR" -name "backup-*.tar.gz" -mtime "+${RETENTION_DAYS}" -print -delete

echo "Done."
