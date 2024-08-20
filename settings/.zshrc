export ZSH=$HOME/.oh-my-zsh

### XSET
xset r rate 250 30 # In case of bug on Ubuntu
### END XSET

### THEME
ZSH_THEME="spaceship"
### END THEME

### SPACESHIP
SPACESHIP_PROMPT_ORDER=(
	user          # Username section
	dir           # Current directory section
	host          # Hostname section
	git           # Git section (git_branch + git_status)
	node
	hg            # Mercurial section (hg_branch  + hg_status)
	exec_time     # Execution time
	line_sep      # Line break
	jobs          # Background jobs indicator
	exit_code     # Exit code section
	char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
### END SPACESHIP

### PLUGINS
plugins=(
  git
  zsh-autosuggestions
)
### END PLUGINS

### ALIAS
alias ll='ls -lah --color=auto --group-directories-first'
###

### SOURCE
source $ZSH/oh-my-zsh.sh
### END SOURCE

### EXPORT AND LOADS
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
### END EXPORT

### EVAL
eval "$(pyenv init --path)"
### END EVAL
