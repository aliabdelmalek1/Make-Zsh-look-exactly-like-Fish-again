# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS SHARE_HISTORY

# Keybindings
bindkey -e

# Delete
bindkey "^[[3~"   delete-char

# Alt + Delete
bindkey "^[[3;3~" kill-word

# Ctrl + Left / Right
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# Alt + Left / Right
bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word

bindkey "^[b"     backward-word
bindkey "^[f"     forward-word

# Ctrl + Up / Down
bindkey "^[[1;5A" up-line-or-history
bindkey "^[[1;5B" down-line-or-history

# Alt + Up / Down
bindkey "^[[1;3A" up-line-or-history
bindkey "^[[1;3B" down-line-or-history

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Autosuggest color
typeset -gA ZSH_HIGHLIGHT_STYLES
typeset -g FISH_CYAN='#1abc9c'
typeset -g FISH_WHITE='#ffffff'
typeset -g FISH_RED='#c0392b'
#typeset -g FISH_RED='#dd0020'
typeset -g FISH_GREEN='#11d116'
typeset -g FISH_YELLOW='#f67400'

ZSH_HIGHLIGHT_STYLES[command]="fg=$FISH_WHITE"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=$FISH_WHITE"
ZSH_HIGHLIGHT_STYLES[function]="fg=$FISH_WHITE"
ZSH_HIGHLIGHT_STYLES[alias]="fg=$FISH_WHITE"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=$FISH_WHITE"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=$FISH_RED"
ZSH_HIGHLIGHT_STYLES[reserved-word]="fg=$FISH_WHITE"
ZSH_HIGHLIGHT_STYLES[default]="fg=$FISH_CYAN"
ZSH_HIGHLIGHT_STYLES[assign]="fg=$FISH_CYAN"
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=$FISH_CYAN"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=$FISH_CYAN"
ZSH_HIGHLIGHT_STYLES[redirection]="fg=$FISH_CYAN"
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=$FISH_GREEN"
ZSH_HIGHLIGHT_STYLES[globbing]="fg=$FISH_WHITE"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=$FISH_YELLOW"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=$FISH_YELLOW"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=$FISH_GREEN"
ZSH_HIGHLIGHT_STYLES[path]="fg=$FISH_CYAN,underline"
ZSH_HIGHLIGHT_STYLES[path_prefix]="fg=$FISH_CYAN,underline"
ZSH_HIGHLIGHT_STYLES[path_pathseparator]="fg=$FISH_CYAN,underline"
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]="fg=$FISH_CYAN,underline"
ZSH_HIGHLIGHT_STYLES[comment]="fg=$FISH_RED"

# Starship prompt
eval "$(starship init zsh)"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#try this path if the previous one didn't work
#source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
