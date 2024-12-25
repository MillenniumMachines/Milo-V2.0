#!/usr/bin/env bash
set -euo pipefail

# Check required tools
for cmd in wireviz yq; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo "Error: $cmd is required but not installed"
        exit 1
    fi
done

# Generate diagrams
echo "Generating wiring diagrams..."
wireviz -f hp -p milo-v2.0.yaml milo-v2.0-*.yaml

# Create index.html header
cat > index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Milo v2.0 Wiring</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Milo v2.0 Wiring</h1>
        <div class="list-group">
EOF

# Process YAML files and generate links
for yaml in milo-v2.0-*.yaml; do
    # Combine anchor file with target file and extract title
    title=$({ cat milo-v2.0.yaml; echo; cat "$yaml"; } | yq '.metadata.title' 2>/dev/null || basename "$yaml" .yaml)
    html_file="${yaml%.yaml}.html"
    echo "<a href=\"$html_file\" class=\"list-group-item list-group-item-action\">$title</a>" >> index.html
done

# Close HTML
cat >> index.html << 'EOF'
        </div>
    </div>
</body>
</html>
EOF

echo "Index generated successfully"