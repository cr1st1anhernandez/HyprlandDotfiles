source ~/.config/fish/colors.fish

# hide welcome message
set -g fish_greeting

if status is-interactive
  # Commands to run in interactive sessions can go here
end

# Make su launch fish
function su
   command su --shell=/usr/bin/fish $argv
end

function terminal
    kitty --working-directory (pwd) &
end

# Get terminal emulator
set TERM_EMULATOR kitty
   
# Exports
export VISUAL="vim"
export EDITOR="$VISUAL"

# Directory abbreviations
abbr -a -g l 'ls'
abbr -a -g la 'ls -a'
abbr -a -g ll 'ls -l'
abbr -a -g lal 'ls -al'

# User abbreviations
abbr -a -g h 'history' # Show history
abbr -a -g untar 'tar -zxvf' # Untar
abbr -a -g ipe 'curl ifconfig.co' # Get external IP address
abbr -a -g ips 'ip link show' # Get network interfaces information
abbr -a -g tn 'tmux new -s (pwd | sed "s/.*\///g")' # Create new tmux session

# Aliases
alias grep "grep --color=auto"
alias cat "bat --style=plain --paging=never"
alias ls "eza --group-directories-first"
alias tree "eza -T"
alias nv 'neovide'
alias rm 'trash-put'
alias spotify 'flatpak run com.spotify.Client'

# Paths
set -gx PATH $PATH ~/.local/bin
set -gx PATH $PATH ~/.cargo/bin
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set PATH $PATH /usr/lib/jvm/default/bin
set -gx PATH $PATH /usr/bin/
set fish_plugins autojump vi-mode

zoxide init fish | source
starship init fish | source

fish_add_path /home/dev/.spicetify
