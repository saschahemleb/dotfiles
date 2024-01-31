alias krew='kubectl krew'
alias k=kubectl
alias kcx='kubectl ctx'
alias kns='kubectl ns'

function netshoot_kubernetes_pod() {
        if [ -z "$1" ]; then
                echo 'Usage: netshoot_kubernetes_pod <pod_name>'
                return
        fi

        kubectl debug $1 -it --image=nicolaka/netshoot
}
alias netshoot_kubernetes_tmp='kubectl run tmp-shell --rm -i --tty --image nicolaka/netshoot'

function netshoot_kubernetes_host() {
  kubectl run tmp-shell --rm -i --tty --overrides='{"spec": {"hostNetwork": true}}'  --image nicolaka/netshoot
}
