export EDITOR='subl -w'

# GPG Agent config
GPG_TTY=$(tty)
export GPG_TTY
if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi

# Set up Virtualenv wrapper
. "/usr/local/bin/virtualenvwrapper.sh"

# start the default virtrualenv
workon default

# Set up docker-machine
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://localhost:2376"
export DOCKER_CERT_PATH="/Users/kevinhill/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"