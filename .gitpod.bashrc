
# Aliases
alias k="kubernetes "

# Load completion for helm
source <(helm completion bash)
source <(kubectl completion bash)

alias k="kubernetes "
complete -F __start_kubectl k

export PS1="┌─── \u @ ☁️ : \n│    \w \n└ "
