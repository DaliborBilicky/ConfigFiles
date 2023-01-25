# Alias
alias ls='lsd -a'
alias ll='lsd -la'
alias vim='nvim'
alias nf='neofetch'

function cdll() {
    local result=$(command tere -m ctrl-x:Exit "$@")
    [ -n "$result" ] && cd -- "$result"
}

function colormap() {
for bg in 48 ; do # Foreground / Background
    for color in {0..255} ; do # Colors
        # Display the color
        printf "\e[${bg};5;%sm  %3s  \e[0m" $color $color
        # Display 6 colors per lines
        if [ $((($color + 1) % 6)) == 4 ] ; then
            echo # New line
        fi
    done
    echo # New line
done
}

#StarShip start
eval "$(starship init bash)"
