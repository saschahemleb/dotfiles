alias dc='docker compose'
alias dori='docker run -it --rm '

alias watchdog='docker run --env WATCHDOG_USERNAME --env WATCHDOG_PASSWORD --interactive --volume $(pwd):/a --workdir /a nexus.eventim.net:5043/tixx/watchdog/watchdog-cli:1.0.0'

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
