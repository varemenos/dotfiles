### OS Detection
UNAME=`uname`
if [[ $UNAME == 'Darwin' ]]; then
	CURRENT_OS='OS X'
else
	CURRENT_OS='Linux'
fi

# turn off useless bloating globals usually set by distros
setopt no_global_rcs

# ignore history duplicates and space
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# Set Language
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Python version missmatch in Arch
if [[ $CURRENT_OS == 'Linux' ]]; then
	export PYTHON=python2
fi

# Load NVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

# Tell NVM to symlink the currently selected node version
export NVM_SYMLINK_CURRENT=true

# Extend PATH
export PATH=$PATH:/usr/sbin:/sbin:/bin

# load RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
# Extras, like shims and autocompletion
eval "$(rbenv init -)"


# Set CHROME_BIN for karma
if [[ $CURRENT_OS == 'Linux' ]]; then
	export CHROME_BIN=google-chrome-stable
fi
