export PATH=/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH

# Aliases
alias k="kubernetes"
alias helm2="/home/linuxbrew/.linuxbrew/opt/helm@2/bin/helm "

# Load completion for helm
source <(helm completion bash)
