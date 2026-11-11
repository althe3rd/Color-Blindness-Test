.PHONY: serve start dev preview clean help

# Default port
PORT ?= 8000

help: ## Show this help message
	@echo "Color Vision Test Station - Local Development"
	@echo ""
	@echo "Available commands:"
	@echo "  make serve    - Start Python HTTP server on port $(PORT)"
	@echo "  make start    - Start server using npx serve"
	@echo "  make dev      - Start server on port 3000"
	@echo "  make preview  - Start server and open in browser"
	@echo "  make clean    - Clean up temporary files"
	@echo ""
	@echo "Usage examples:"
	@echo "  make serve PORT=3000  - Start on custom port"

serve: ## Start Python HTTP server
	@echo "Starting server on http://localhost:$(PORT)"
	@echo "Press Ctrl+C to stop"
	@python3 -m http.server $(PORT)

start: ## Start server using npx serve
	@echo "Starting server with npx serve..."
	@npx serve . -l 3000

dev: ## Start development server on port 3000
	@echo "Starting development server on http://localhost:3000"
	@npx serve . -l 3000

preview: ## Start server and open in browser
	@echo "Starting server and opening browser..."
	@(sleep 1 && open http://localhost:3000) &
	@npx serve . -l 3000

clean: ## Clean up temporary files
	@echo "Cleaning up..."
	@find . -name ".DS_Store" -delete
	@echo "Done!"

