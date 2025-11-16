#                                                      
#    ▗▄▄▖                               ▗▖             
#    ▐▛▀▜▖                              ▐▌             
#    ▐▌ ▐▌▐▙██▖ ▟█▙ ▐█▙█▖ ▟█▙ ▐███▌▗▟██▖▐▙██▖ █▟█▌ ▟██▖
#    ▐██▛ ▐▛ ▐▌▐▙▄▟▌▐▌█▐▌▐▛ ▜▌  ▗▛ ▐▙▄▖▘▐▛ ▐▌ █▘  ▐▛  ▘
#    ▐▌   ▐▌ ▐▌▐▛▀▀▘▐▌█▐▌▐▌ ▐▌ ▗▛   ▀▀█▖▐▌ ▐▌ █   ▐▌   
#    ▐▌   ▐▌ ▐▌▝█▄▄▌▐▌█▐▌▝█▄█▘▗█▄▄▖▐▄▄▟▌▐▌ ▐▌ █   ▝█▄▄▌
#    ▝▘   ▝▘ ▝▘ ▝▀▀ ▝▘▀▝▘ ▝▀▘ ▝▀▀▀▘ ▀▀▀ ▝▘ ▝▘ ▀    ▝▀▀ 
#                                                      
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #                                                     

# ░▀█▀░█▀█░█▀▀░▀█▀░█▀█░█▀█░▀█▀░░░█▀█░█▀▄░█▀█░█▄█░█▀█░▀█▀
# ░░█░░█░█░▀▀█░░█░░█▀█░█░█░░█░░░░█▀▀░█▀▄░█░█░█░█░█▀▀░░█░
# ░▀▀▀░▀░▀░▀▀▀░░▀░░▀░▀░▀░▀░░▀░░░░▀░░░▀░▀░▀▀▀░▀░▀░▀░░░░▀░

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#                                  
#      ▄▄             ▄▄   █       
#     █▀▀▌           ▐▛▀   ▀       
#    ▐▛    ▟█▙ ▐▙██▖▐███  ██   ▟█▟▌
#    ▐▌   ▐▛ ▜▌▐▛ ▐▌ ▐▌    █  ▐▛ ▜▌
#    ▐▙   ▐▌ ▐▌▐▌ ▐▌ ▐▌    █  ▐▌ ▐▌
#     █▄▄▌▝█▄█▘▐▌ ▐▌ ▐▌  ▗▄█▄▖▝█▄█▌
#      ▀▀  ▝▀▘ ▝▘ ▝▘ ▝▘  ▝▀▀▀▘ ▞▀▐▌
#                              ▜█▛▘
#                                  

# ░█▀▀░█▀█░█▀▄░█▀▀
# ░█░░░█░█░█▀▄░█▀▀
# ░▀▀▀░▀▀▀░▀░▀░▀▀▀

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ░█▀▀░█░█░█▀▀░█▀█░█▀▄
# ░▀▀█░█░█░█░█░█▀█░█▀▄
# ░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀░▀

# Completion behaviour similar to oh-my-zsh
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors "ma=01;37;44"

# Word movement with Ctrl+Arrow keys
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# ░█▀█░█▀█░▀█▀░█░█
# ░█▀▀░█▀█░░█░░█▀█
# ░▀░░░▀░▀░░▀░░▀░▀


[[ ! -d "$HOME/scripts" ]] && mkdir -p "$HOME/scripts"
export PATH="$HOME/scripts:$PATH"

# pnpm
export PNPM_HOME="/home/pnemonic/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/pnemonic/.lmstudio/bin"
# End of LM Studio CLI section

# ░▀▀█░▀█▀░█▀█░▀█▀░▀█▀
# ░▄▀░░░█░░█░█░░█░░░█░
# ░▀▀▀░▀▀▀░▀░▀░▀▀▀░░▀░


if [[ ! -f ~/.zinit/bin/zinit.zsh ]]; then
  mkdir -p ~/.zinit/bin
  git clone https://github.com/zdharma-continuum/zinit.git ~/.zinit/bin
fi
source ~/.zinit/bin/zinit.zsh

# Autosuggestions
zinit light zsh-users/zsh-autosuggestions
# Syntax highlighting
zinit light zsh-users/zsh-syntax-highlighting
# p10k
zinit light romkatv/powerlevel10k
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# ░█▀█░█░█░▀█▀░█▀█░█▀▀░█░█░█▀▀░█▀▀░█▀▀░█▀▀░▀█▀░▀█▀░█▀█░█▀█░█▀▀
# ░█▀█░█░█░░█░░█░█░▀▀█░█░█░█░█░█░█░█▀▀░▀▀█░░█░░░█░░█░█░█░█░▀▀█
# ░▀░▀░▀▀▀░░▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀

autoload -Uz compinit
compinit

# ░█▀▀░█░█░█▀▄░█▀█
# ░▀▀█░█░█░█░█░█░█
# ░▀▀▀░▀▀▀░▀▀░░▀▀▀

# Permite "ESC ESC" para insertar sudo al principio si se olvida.

sudo_last_command() {
  # Solo si la tecla es Esc Esc
  LBUFFER="sudo $LBUFFER"
  zle reset-prompt
}

zle -N sudo_last_command
bindkey '\e\e' sudo_last_command

#                             
#      ▄  ▗▄▖    █            
#     ▐█▌ ▝▜▌    ▀            
#     ▐█▌  ▐▌   ██   ▟██▖▗▟██▖
#     █ █  ▐▌    █   ▘▄▟▌▐▙▄▖▘
#     ███  ▐▌    █  ▗█▀▜▌ ▀▀█▖
#    ▗█ █▖ ▐▙▄ ▗▄█▄▖▐▙▄█▌▐▄▄▟▌
#    ▝▘ ▝▘  ▀▀ ▝▀▀▀▘ ▀▀▝▘ ▀▀▀ 
#                             
#                             

# For a full list of active aliases, run `alias`.

alias ls="lsd"
alias code="codium"

#                   
#    ▗▄▄▄▖          
#    ▐▛▀▀▘ ▐▌       
#    ▐▌   ▐███  ▟██▖
#    ▐███  ▐▌  ▐▛  ▘
#    ▐▌    ▐▌  ▐▌   
#    ▐▙▄▄▖ ▐▙▄ ▝█▄▄▌
#    ▝▀▀▀▘  ▀▀  ▝▀▀ 
#                   
#                   

lazy_load() {
  local tool=$1
  local init_script=$2
  shift 2
  local commands=("$@")
  local load_func="${tool}_lazy_load"
  
  eval "
  $load_func() {
    unset -f ${commands[@]}
    $init_script
  }
  " 
  for cmd in "${commands[@]}"; do
    eval "$cmd() { $load_func; $cmd \"\$@\"; }"
  done
}

# ░█▀▀░█▀▀░█░█░░░░░█▀█░█▀▀░█▀▀░█▀█░▀█▀
# ░▀▀█░▀▀█░█▀█░▄▄▄░█▀█░█░█░█▀▀░█░█░░█░
# ░▀▀▀░▀▀▀░▀░▀░░░░░▀░▀░▀▀▀░▀▀▀░▀░▀░░▀░

lazy_load "ssh" \
  'eval "$(keychain --eval --quiet id_rsa id_ed25519)"' \
  ssh-add

# ░█▀▀░█▀█░█▀█░█▀▄░█▀█
# ░█░░░█░█░█░█░█░█░█▀█
# ░▀▀▀░▀▀▀░▀░▀░▀▀░░▀░▀

# Lazy load Conda
lazy_load "conda" \
  '[[ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]] && . "$HOME/miniconda3/etc/profile.d/conda.sh" || export PATH="$HOME/miniconda3/bin:$PATH"' \
  conda python pip

# ░█▀█░█░█░█▄█
# ░█░█░▀▄▀░█░█
# ░▀░▀░░▀░░▀░▀

# NVM lazy load
export NVM_DIR="$HOME/.nvm"

lazy_load "nvm" \
  '[[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"' \
  nvm node npm npx

# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓

# Pnemonic - "Beauty is an echo of logic"
