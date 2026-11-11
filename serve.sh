#!/bin/bash
# Serve the test station locally. Usage: ./serve.sh [port]
PORT=${1:-8000}

if ! command -v python3 &> /dev/null; then
    echo "Error: python3 not found. Use 'npm start' instead." >&2
    exit 1
fi

echo "Serving on http://localhost:$PORT (Ctrl+C to stop)"
exec python3 -m http.server "$PORT"
