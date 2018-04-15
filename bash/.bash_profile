#!/bin/sh
#   ~/.bash_profile
#
# POSIX Shell login script. you should put all your environment variables in there. Like LESS, PATH, MANPATH, LC_*
#
#   Henrik Mårtenzon
#       ~Martenzi

echo "*** fucking splendid .bash_profile"

# Ensure user-installed binaries take precedence
export PATH=~/binaries:$PATH
export PATH=/usr/local/bin/git:$PATH
export PATH=/usr/local/Cellar:$PATH
# Had several issues with getting Subl to be recognized.
export PATH=/Applications/Sublime\ Text\ \(dev3160\).app:$PATH
export PATH=/usr/local:$PATH
export PATH=/usr/local/opt:$PATH

# export PATH=/usr/local/Cellar/python@2/2.7.14_3:$PATH
# export PATH=/Library/Frameworks/Python.framework/Versions/3.6/bin:$PATH

# set EDITOR to SublimeText3
    # export EDITOR="subl-dev -w"


test -f ~/.bashrc && source ~/.bashrc
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"