#!/usr/bin/env bash

set -euo pipefail

OUTPUT="file-system.yaml"

mkdir -p "$(dirname "$OUTPUT")"

case "$(uname -s)" in
    MINGW*|MSYS*|CYGWIN*)
        cat > "$OUTPUT" <<'EOF'
name: Local Config
version: 0.0.1
schema: v1

mcpServers:
  - name: filesystem-server-windows
    command: npx
    args:
      - -y
      - "@modelcontextprotocol/server-filesystem"
      - "C:\\sources"
    env: {}
EOF
        ;;

    Linux*)

        LINUX_USER="$(id -un)"
        LINUX_HOME="$(getent passwd "$LINUX_USER" | cut -d: -f6)"
        SOURCES_DIR="${LINUX_HOME}/sources"

        if [[ ! -d "$SOURCES_DIR" ]]; then
            echo "Error: sources directory not found: $SOURCES_DIR" >&2
            exit 1
        fi

        cat > "$OUTPUT" <<EOF

name: Local Config
version: 0.0.1
schema: v1

mcpServers:
  - name: filesystem-server-linux
    command: npx
    args:
      - -y
      - "@modelcontextprotocol/server-filesystem"
      - "$SOURCES_DIR"
    env: {}
EOF
        ;;

    *)
        echo "Unsupported operating system: $(uname -s)" >&2
        exit 
        ;;
esac

echo "MCP configuration generated: $OUTPUT"