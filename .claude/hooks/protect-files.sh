#!/bin/bash
# protect-files.sh

INPUT=$(cat)
FILE_PATH=$(echo $INPUT | jq -r '.tool_input.file_path // empty')

PROTECTED_FILES=(
	".env"
	"package-lock.json"
	".git/"
	"config.json"
	"settings.json"
)

for pattern in "${PROTECTED_FILES[@]}"; do
	if [[ "$FILE_PATH" == *"$pattern"* ]]; then
		echo "Blocked: The file '$FILE_PATH' is protected and cannot be modified." >&2
		exit 1
	fi
done

exit 0