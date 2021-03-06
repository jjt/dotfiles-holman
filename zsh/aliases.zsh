alias reload='. ~/.zshrc'
alias hack='fc -l 1 | rg'
alias nis='npm install --save'
alias nisd='npm install --save-dev'
alias ns='npm search'
alias psag='ps aux | rg'
alias ls='ls -G'
alias bat="bat --paging never"
alias cat="bat"
alias fbranch='`git --no-pager branch | fzf`'

alias bis='bower install --save'
alias bs='bower search'

alias vag='vagrant'

alias npme='PATH=$(npm bin):$PATH'

alias color='osascript ~/.color_meter.scpt'

alias gulp='nocorrect gulp'
alias grunt='nocorrect grunt'

# Homebrew vim instead of system
alias vim='/usr/local/bin/vim'

# because typing 'cd' is A LOT of work!!
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .......='cd ../../../../../../'
alias ........='cd ../../../../../../../'
alias .........='cd ../../../../../../../../'
alias ..........='cd ../../../../../../../../../'
alias ...........='cd ../../../../../../../../../../'

alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"

# Yarn
alias yad="yarn add --dev"
alias ya="yarn add"
alias ylp="yarn list --pattern"

# Ruby
alias be="bundle exec"

