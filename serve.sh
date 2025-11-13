#!/bin/bash

# Simple local server script for testing the colorblind test station
# Usage: ./serve.sh [port]

PORT=${1:-8000}

echo "🚀 Starting local server on http://localhost:$PORT"
echo "📝 Press Ctrl+C to stop the server"
echo ""

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    echo "Using Python 3..."
    python3 -m http.server $PORT
# Fallback to Python 2
elif command -v python &> /dev/null; then
    echo "Using Python 2..."
    python -m SimpleHTTPServer $PORT
else
    echo "❌ Error: Python is not installed"
    echo "Please install Python or use: npm start"
    exit 1
fi

