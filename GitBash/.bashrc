# Alias
alias ls='lsd -a --group-directories-first'
alias ll='lsd -al --group-directories-first'
alias vim='nvim'
alias nf='neofetch'
alias vi='nvim'
alias mkf='touch'

# Useful functions
function update() {
    sudo winget update --all
    sudo scoop update
    vim
}

function ch() {
    cd C:/Users/dbili
    vim .bash_history
}

#StarShip start
eval "$(starship init bash)"