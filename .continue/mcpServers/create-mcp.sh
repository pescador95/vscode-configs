#!/usr/bin/env bash

set -e

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
        cat > "$OUTPUT" <<'EOF'
name: Local Config
version: 0.0.1
schema: v1
        
mcpServers:
  - name: filesystem-server-linux
    command: npx
    args:
      - -y
      - "@modelcontextprotocol/server-filesystem"
      - "/sources"
    env: {}
EOF
        ;;

    *)
        echo "Unsupported operating system: $(uname -s)" >&2
        exit 1
        ;;
esac

echo "MCP configuration generated: $OUTPUT"