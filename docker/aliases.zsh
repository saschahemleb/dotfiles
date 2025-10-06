alias dc='docker compose'
alias dori='docker run -it --rm '
alias dorime='docker run -it --rm --volume ./:/workdir --volume $SSH_AUTH_SOCK:$SSH_AUTH_SOCK -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK --workdir /workdir --entrypoint /bin/bash'

alias watchdog='docker run --platform linux/amd64 --rm --env WATCHDOG_USERNAME --env WATCHDOG_PASSWORD --interactive --volume $(pwd):/a --workdir /a harbor.eventim.net/tixx/tixx-all/watchdog/watchdog-cli:1.0.6'

function netshoot_docker_container() {
	if [ -z "$1" ]; then
		echo 'Usage: netshoot_docker_container <container_name>'
		return
	fi

	docker run -it --net container:$1 nicolaka/netshoot
}
alias netshoot_docker_host='docker run -it --net host nicolaka/netshoot'

function k6() {
    docker run --rm --interactive --volume $PWD:/app --workdir /app grafana/k6:master-with-browser $@
}
