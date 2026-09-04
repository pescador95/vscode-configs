# My personal configs

## VS Code Keybindings

To use these keybindings, copy the `vscode/keybindings.json` file to:

### Windows

`%APPDATA%\Code\User`

### Linux

`~/.config/Code/User`

---

## Continue (VSCode Extension)

For the [Continue](https://continue.dev/) VS Code extension, copy the entire content into `.continue` to:

### Windows

`%USERPROFILE%\.continue`

### Linux

`~/.continue/`

**Extension:** [Continue – VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=Continue.continue)
**Website:** [continue.dev](https://continue.dev/)

### MCP

After copying the `.continue` directory, generate the MCP configuration for your operating system:

```bash
cd ~/.continue/mcpServers
./create-mcp.sh
```

On Windows, run the script using **Git Bash**.

The script generates the appropriate MCP configuration for the current operating system. 

> **Note** The `sources` directory is the **root directory containing the source code projects** that the MCP filesystem server can access. It must be located in the user's home directory (for example, /home/user/sources on Linux).

Example:

Linux
```yaml
name: Local Config
version: 0.0.1
schema: v1

mcpServers:
  - name: filesystem-server-linux
    command: npx
    args:
      - -c
      - exec npx -y @modelcontextprotocol/server-filesystem "/home/<user>/sources"
    env: {}        
```

Windows
```yaml
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
```