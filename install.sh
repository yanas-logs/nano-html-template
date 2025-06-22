#!/bin/bash
# Auto-installer for nano.html function

CONFIG_FILE="$HOME/.bashrc"

if [[ ! -f "$CONFIG_FILE" ]]; then
    echo "Error: .bashrc not found in your home directory."
    exit 1
fi

echo "Installing nano.html function..."
echo "" >> "$CONFIG_FILE"
cat << 'EOF' >> "$CONFIG_FILE"
# nano-html-template (auto-installed)
nano.html() {
    local file="${1:-untitled.html}"
    cat <<HTML > "$file"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

</body>
</html>
HTML
    nano "$file"
}
EOF

echo "Installation complete! Restart your terminal or run:"
echo "source $CONFIG_FILE"
