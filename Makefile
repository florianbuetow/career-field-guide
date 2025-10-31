.PHONY: help init save banner

# Default target
help: banner
	@echo "Available make targets:"
	@echo ""
	@echo "  make init    - Checks current setup"
	@echo "  make save    - Launch Claude Code with commit workflow guidance"
	@echo "  make help    - Show this help message"
	@echo ""

banner:
	@clear
	@echo "    __  ____ ____    ___   ___ ____       _____ ____   ___ _     ___         ____ __ __ ____ ___     ___"
	@echo "   /  ]/    |    \  /  _] /  _]    \     |     |    | /  _] |   |   \       /    |  |  |    |   \   /  _]"
	@echo "  /  /|  o  |  D  )/  [_ /  [_|  D  )    |   __||  | /  [_| |   |    \     |   __|  |  ||  ||    \ /  [_"
	@echo " /  / |     |    /|    _]    _]    /     |  |_  |  ||    _] |___|  D  |    |  |  |  |  ||  ||  D  |    _]"
	@echo "/   \_|  _  |    \|   [_|   [_|    \     |   _] |  ||   [_|     |     |    |  |_ |  :  ||  ||     |   [_"
	@echo "\     |  |  |  .  \     |     |  .  \    |  |   |  ||     |     |     |    |     |     ||  ||     |     |"
	@echo " \____|__|__|__|\_|_____|_____|__|\_|    |__|  |____|_____|_____|_____|    |___,_|\__,_|____|_____|_____|"
	@echo ""

init: banner
	@echo "Checking setup ..."
	@command -v claude >/dev/null 2>&1 || { \
		echo "   ERROR: Claude Code CLI is not available."; \
		echo ""; \
		echo "   Claude Code is required to use other make targets."; \
		echo "   Please install Claude Code CLI from: https://claude.ai/download"; \
		echo ""; \
		exit 1; \
	}
	@echo "   Claude Code is available"
	@echo ""

save: banner
	@echo "Launching Claude Code..."
	@echo ""
	@claude "Please read @CLAUDE.md and execute the git commit workflow: update CHANGELOG.md, stage only tracked modified files, commit with appropriate message, and push to remote. Do not ask questions unless absolutely necessary."
