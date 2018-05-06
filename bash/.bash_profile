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
export PATH="/usr/local/bin/:$PATH"
export PATH="/usr/local/git/bin:$PATH"
export PATH="/sw/bin/:$PATH"
export PATH="/usr/local/:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/bin/git:$PATH"

export PATH="/usr/local/Cellar:$PATH"
export PATH="/usr/local/Cellar/ruby/2.5.1:$PATH"

# this is the root folder where all globally installed node packages will  go
export PATH="$NPM_PACKAGES/bin:$PATH"
export NPM_PACKAGES="/usr/local/npm_packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

# export PATH=/usr/local/Cellar/python@2/2.7.14_3:$PATH
# export PATH=/Library/Frameworks/Python.framework/Versions/3.6/bin:$PATH

# set EDITOR to SublimeText3
    # export EDITOR="/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text"
    export EDITOR='subl -m -w'
    # export PATH="/Applications/Sublime\ Text.app"
    # export PATH="subl"
    # /Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text
    # /Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text -w'
    # /Applications/Sublime\ Text.app
    # export EDITOR='subl -a -w'
    # /Applications/Sublime Text.app

    # /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl


test -f ~/.bashrc && source ~/.bashrc
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"