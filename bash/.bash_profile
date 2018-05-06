#!/bin/sh
#   ~/.bash_profile
#
# POSIX Shell login script. you should put all your environment variables in there. Like LESS, PATH, MANPATH, LC_*
#
#   Henrik Mårtenzon
#       ~Martenzi

echo "*** fucking splendid .bash_profile"

# set EDITOR to SublimeText3
export EDITOR='subl -m -w'

# Ensure user-installed binaries take precedence
export PATH="~/binaries:/usr/local/bin:/usr/local/Cellar:/usr/local/sbin:/usr/local/opt:/usr/local/git/bin:/usr/local/mysql/bin:$PATH"

# What is this for?
export PATH="/sw/bin:$PATH"

# Testing whether this path is needed...
# export PATH="/usr/local/Cellar/ruby/2.5.1:$PATH"

# this is the root folder where all globally installed node packages will  go
export PATH="$NPM_PACKAGES/bin:$PATH"
export NPM_PACKAGES="/usr/local/npm_packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"



# Test if bash files exists in HOME and source them
test -f ~/.bashrc && source ~/.bashrc
test -f ~/.bashrc && source ~/.bashrc

# Sourcing iTerm2´s Shell Integration config
# https://www.iterm2.com/documentation-shell-integration.html
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"