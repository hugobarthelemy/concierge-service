## TOOLS FOR DEVELOPMENT ##

dev: ## Run dev environnment
	bundle exec rails s

kill:
	-@(lsof -i tcp:3000 -ac ruby -t | xargs kill -9) >/dev/null
	-@rm tmp/pids/server.pid

test: ## Run tests
	bundle exec rspec spec

console: ## Run console
	bundle exec rails c
