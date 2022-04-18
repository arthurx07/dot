# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -v

# Prompt for spelling correction of commands.
setopt CORRECT

# Customize spelling correction prompt.
SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# -----------------
# Zim configuration
# -----------------

# Use degit instead of git as the default tool to install and update modules.
#zstyle ':zim:zmodule' use 'degit'

# --------------------
# Module configuration
# --------------------

#
# completion
#

# Set a custom path for the completion dump file.
# If none is provided, the default ${ZDOTDIR:-${HOME}}/.zcompdump is used.
#zstyle ':zim:completion' dumpfile "${ZDOTDIR:-${HOME}}/.zcompdump-${ZSH_VERSION}"

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
#zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Disable automatic widget re-binding on each precmd. This can be set when
# zsh-users/zsh-autosuggestions is the last module in your ~/.zimrc.
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=242'

# ------------------
# Initialize modules
# ------------------

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  # Download zimfw script if missing.
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install

# Customization
#neofetch 
# figlet "message"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/home/kumao/.local/bin":"/home/kumao/bin":$PATH

export VISUAL="/usr/bin/nvim"
export EDITOR="/usr/bin/nvim"

# Created by newuser for 5.8
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Define aliases
PRIV="$(command -v doas)"

alias c="clear"
#alias q="exit"
alias :q="exit"
alias hd="hexdump -C"
alias ls="exa -lgh --group-directories-first"
alias la="exa -lgha --group-directories-first"
alias mkdir="mkdir -pv"
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"
alias ln="ln -i"

alias nvimsu="${PRIV} nvim"
alias v="nvim"
alias vim="nvim"
alias vi="nvim"
alias py="python"
alias clock="tty-clock"
alias qb="qutebrowser"
alias wstatus="iwctl station wlan0 show"
alias wifi="iwctl"
alias protonvpn="doas protonvpn"
alias vpn="doas protonvpn"

alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."

alias p="$HOME/.config/polybar/kumao/launch.sh"
alias k="kwal"
alias n="neofetch"
alias anime="ani-cli"
alias a="ani-cli"
alias manga="tachidesk"
alias m="tachidesk"
alias s="$HOME/.local/bin/spotify-tui/spt"

alias emerge-sync="${PRIV} eix-sync"
alias emerge-upgrade="${PRIV} emerge --update --newuse --deep --ask --tree --verbose --with-bdeps=y --quiet @world && ${PRIV} smart-live-rebuild"
alias emerge-install="${PRIV} emerge -avtq"
alias emerge-depclean="${PRIV} emerge -av --depclean"

alias emerge_install="${PRIV} emerge -avt"
alias emerge_install_unmask="${PRIV} emerge -avt --autounmask=y --autounmask-write"
alias emerge_pretend="${PRIV} emerge -pv"
alias emerge_sync="${PRIV} emaint -a sync"
alias emerge_changed_use="${PRIV} emerge -avt --update --changed-use --deep @world"
alias emerge_new_use="${PRIV} emerge -avt --update --newuse --deep @world"
alias emerge_depclean="${PRIV} emerge -av --depclean"
alias eclean_dist="${PRIV} eclean-dist --deep"
alias eclean_pkg="${PRIV} eclean-pkg --deep"

alias rc-service="${PRIV} rc-service"
alias rc-update="${PRIV} rc-update"
alias clean_ram="${PRIV} sh -c 'sync; echo 3 > /proc/sys/vm/drop_caches'"
alias g="gentoo-sys-update"

alias 256colors="~/.color-toys/256colors2.pl"
alias bloks="~/.color-toys/bloks"
alias colorbars="~/.color-toys/colorbars"
alias colortest="~/.color-toys/colortest"
alias colortest-slim="~/.color-toys/colortest-slim"
alias colorview="~/.color-toys/colorview"
alias panes="~/.color-toys/panes"
alias pipes1="~/.color-toys/pipes1"
alias pipes2="~/.color-toys/pipes2"
alias pipes2-slim="~/.color-toys/pipes2-slim"

# gentoo zsh completions
autoload -U compinit promptinit
compinit
promptinit; prompt gentoo
zstyle ':completion::complete:*' use-cache 1
