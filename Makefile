DOTPATH := ~/dotfiles

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: all
all:

.PHONY: deploy
deploy: ## dotfilesの中の.がつくファイルからホームディレクトリにシンボリックリンクを貼る
	sh $(DOTPATH)/bin/deploy.sh

.PHONY: brew
brew: ## homebrewのformulaとcaskを入れる
	sh $(DOTPATH)/bin/brew.sh