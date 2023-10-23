.PHONY: check-env
check-env:
ifndef DOMAIN_NAME
	$(error env DOMAIN_NAME is undefined)
endif

.PHONY: install-docker
install-docker:
	bash ./scripts/install-docker.bash

.PHONY: install-acme
install-acme: check-env
	curl https://get.acme.sh | sh -s email=tuyen.devops.metadap@gmail.com || true
	bash ./scripts/issue-cert.bash

.PHONY: create-genesis
create-genesis:
	bash ./scripts/create-genesis.bash 

.PHONY: start
start:
	bash ./scripts/start.bash

.PHONY: stop
stop:
	bash ./scripts/stop.bash

# .PHONY: reset-explorer
# reset-explorer:
#     bash ./scripts/reset-explorer.bash

.PHONY: all
all: create-genesis start