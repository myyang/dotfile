# garfield.yang .zsh

# protection
alias rm="rm -i"
alias mv="mv -i"

# setup brew
eval "$(brew shellenv)"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{red}(%b)%f'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{cyan}%n%f:%F{yellow}%~%f ${vcs_info_msg_0_} %(?.%F{white}.%F{red})$%f '

if [ -f ~/.devrc ]; then
    source ~/.devrc
fi

if [ -f ~/.byhostrc ]; then
    source ~/.byhostrc
fi
