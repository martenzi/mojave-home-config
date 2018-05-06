#!/bin/sh
#   ~/.bash_profile
#
# POSIX Shell login script. you should put all your environment variables in there. Like LESS, PATH, MANPATH, LC_*
#
#   Henrik Mårtenzon
#       ~Martenzi

echo "*** fucking splendid .bash_profile"

# Ensure user-installed binaries take precedence
export PATH="~/binaries:$PATH"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt:$PATH"
# export PATH="/usr/local/:$PATH"
export PATH="/usr/local/git/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/bin/git:$PATH"

# What is this for?
export PATH="/sw/bin:$PATH"

export PATH="/usr/local/Cellar:$PATH"
export PATH="/usr/local/Cellar/ruby/2.5.1:$PATH"

# this is the root folder where all globally installed node packages will  go
export PATH="$NPM_PACKAGES/bin:$PATH"
export NPM_PACKAGES="/usr/local/npm_packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

# set EDITOR to SublimeText3
export EDITOR='subl -m -w'

# Test if bash files exists in HOME and source them
test -f ~/.bashrc && source ~/.bashrc
test -f ~/.bashrc && source ~/.bashrc

# Sourcing iTerm2´s Shell Integration config
# https://www.iterm2.com/documentation-shell-integration.html
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"