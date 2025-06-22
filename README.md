# nano-html-template
A shell function to instantly create HTML files with proper boilerplate and open them in nano editor.

## Features
- Creating an HTML5 boilerplate
- Opens directly in nano for editing
- Works in Bash Shell

## Installation

### Automatic (recommended)
```bash
curl -fsSL https://raw.githubusercontent.com/yanas-logs/nano-html-template/main/install.sh | bash
```

### Manual
Add this to your ~/.bashrc
```bash
nano.html() {
    local file="${1:-untitled.html}"
    cat <<EOF > "$file"
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
EOF
    nano "$file"
}
```


