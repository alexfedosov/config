export ZSH="/Users/alexfedosov/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export UPDATE_ZSH_DAYS=14

plugins=(git adb colorize)

source $ZSH/oh-my-zsh.sh

# User configuration

# my custom aliases
. ~/.config/zsh/.zsh_aliases

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/alexfedosov/.npm-packages/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/alexfedosov/.npm-packages/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/alexfedosov/.npm-packages/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/alexfedosov/.npm-packages/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

export PATH="$PATH:$(yarn global bin)"

export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="$HOME/Library/Android/sdk:$PATH"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$(yarn global bin):$PATH"

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# added by travis gem
[ -f /Users/alexfedosov/.travis/travis.sh ] && source /Users/alexfedosov/.travis/travis.sh
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/ruby@2.5/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=~/chromedriver-bin:$PATH

#nvm

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
export PATH="$NVM_DIR/versions/node/v$(<$NVM_DIR/alias/default)/bin:$PATH"
alias nvm="unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; nvm $@"
