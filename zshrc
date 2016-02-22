# Source Antigen, wherever it may be.  Otherwise, offer to download it.
# Stolen from /u/m-wynn:dotfiles
if [ -f /usr/share/zsh/scripts/antigen/antigen.zsh ]; then
	source /usr/share/zsh/scripts/antigen/antigen.zsh
else
	if [ ! -f ~/.antigen/antigen.zsh ]; then
		vared -p 'Would you like to install antigen? (Y/N): ' -c choice
		if [[ $choice = y* || $choice = Y* ]]; then
			mkdir -p ~/.antigen
			curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/.antigen/antigen.zsh
		else
			echo "Things will fail."
		fi
	fi
	source ~/.antigen/antigen.zsh
fi



# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' max-errors 3 numeric
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' prompt '`%e'\'''
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/drijen/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

autoload -U colors && colors
PROMPT="%n@%m:%~%(?,,%F{red})%#%f "

#antigen configuration
antigen use oh-my-zsh

#antigen bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle horosgrisa/mysql-colorize
#antigen bundle sindresorhus/pretty-time-zsh
antigen bundle chrissicool/zsh-256color
antigen-bundle Tarrasch/zsh-colors
antigen bundle ssh-agent
antigen bundle python
anitgen bundle colored-man-pages

#antigen theme
#antigen theme 

#antigen go
antigen apply
