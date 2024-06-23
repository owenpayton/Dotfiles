set -g fish_greeting

# List Directory
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

# Alias 'vi' to 'nvim'
abbr -a vi nvim
abbr -a ls lsd
abbr -a fzf-cd 'cd $(find * -type d | fzf)'
abbr -a template '/home/owen/Scripts/template.bash'

# bindings
function fish_user_key_bindings
    # fzf
    fzf_key_bindings
end

fish_vi_key_bindings

set -gx EDITOR nvim
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden --glob "!.git"'
set -gx FZF_CTRL_T_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!vendor/*" 2> /dev/null'

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

fish_config theme choose "Rosé Pine"

zoxide init fish | source
