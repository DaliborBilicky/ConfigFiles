printf "
\033[31m██████╗   █████╗   ██████╗ ██╗  ██╗\033[0m  
\033[33m██╔══██╗ ██╔══██╗ ██╔════╝ ██║  ██║\033[0m   
\033[32m██████╦╝ ███████║ ╚█████╗  ███████║\033[0m   
\033[36m██╔══██╗ ██╔══██║  ╚═══██╗ ██╔══██║\033[0m    
\033[34m██████╦╝ ██║  ██║ ██████╔╝ ██║  ██║\033[0m    
\033[35m╚═════╝  ╚═╝  ╚═╝ ╚═════╝  ╚═╝  ╚═╝\033[0m     
"

# Alias
alias ls='lsd -a --group-directories-first'
alias ll='lsd -la --group-directories-first'
alias vim='nvim'
alias nf='neofetch'


# Useful functions
function cdll() {
    local result=$(command tere -m ctrl-x:Exit "$@")
    [ -n "$result" ] && cd -- "$result"
}

function gitSync() {
    git add .
    git commit
    git push origin main
}

function colors() {
    printable_colors=256
    function contrast_color {
        local r g b luminance
        color="$1"

        if (( color < 16 )); then 
            (( color == 0 )) && printf "15" || printf "0"
            return
        fi

        if (( color > 231 )); then 
            (( color < 244 )) && printf "15" || printf "0"
            return
        fi

        g=$(( ((color-16) % 36) / 6 ))
        (( g > 2)) && printf "0" || printf "15"
        return
    }
    function print_color {
        local color="$1" contrast
        contrast=$(contrast_color "$1")
        printf "\e[48;5;%sm" "$color"               
        printf "\e[38;5;%sm%3d" "$contrast" "$color" 
        printf "\e[0m "                              
    }
    function print_run {
        local i
        for (( i = "$1"; i < "$1" + "$2" && i < printable_colors; i++ )) do
            print_color "$i"
        done
        printf "  "
    }
    function print_blocks {
        local start="$1" i
        local end="$2"
        local block_cols="$3"
        local block_rows="$4"
        local blocks_per_line="$5"
        local block_length=$((block_cols * block_rows))

        for (( i = start; i <= end; i += (blocks_per_line-1) * block_length )) do
            printf "\n"
      
            for (( row = 0; row < block_rows; row++ )) do
             
                for (( block = 0; block < blocks_per_line; block++ )) do
                    print_run $(( i + (block * block_length) )) "$block_cols"
                done
                (( i += block_cols ))
                printf "\n"
            done
        done
    }
    print_run 0 16 
    printf "\n"
    print_blocks 16 231 6 6 3 
    print_blocks 232 255 12 2 1 
}


#StarShip start
eval "$(starship init bash)"
