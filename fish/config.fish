set fish_greeting # Aliases

# fm6000 -c "cyan" -w -nd -o "Fedora 37" -d "Gnome" -m 4 -g 9

# Run Python
alias rp='python3 -u'

# git clone
alias gc='git clone'

# Configuration files
alias fishconfig='nvim ~/.config/fish/config.fish'
alias nvimconfig='nvim ~/.config/nvim/init.vim'
alias kittyconfig='nvim ~/.config/kitty/kitty.conf'

# Source Configuration Files
alias srcfish='source ~/.config/fish/config.fish'

#sudo dnf
alias install='sudo dnf install'
alias update='sudo dnf update'
alias upgrade='sudo dnf upgrade'
alias clean='sudo dnf autoremove'

# nvim
alias nv='nvim'

# better ls(exa)
alias ls='exa --classify --icons -s=type'
alias la='exa --all --classify --icons -s=type'
alias ll='exa --all --classify --long --header --icons -s=type'
alias tree='exa --tree --icons --classify'
alias treel='exa --tree -icons --classify --long'
# set exa colors
export EXA_COLORS="di=38;5;111:fi=38;5;251:ex=38;5;40"

# Fix typos
alias cd..='cd ..'
alias pdw='pwd'
alias udpate='sudo dnf update'
alias updte='sudo dnf update'
alias updte='sudo dnf update'
alias updqte='suda dnf update'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/shailesh/miniconda3/bin/conda
    eval /home/shailesh/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

# Conda
alias ca='conda activate'
alias cde='conda deactivate'

# Starship prompt
starship init fish | source
