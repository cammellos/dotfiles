. "$HOME/.homesick/repos/homeshick/homeshick.fish"

abbr -a gst="git status"
abbr -a gco="git checkout"
abbr -a gl="git pull --rebase"
abbr -a gp="git push"
abbr -a gcp="git commit -p"
abbr -a gre="git rebase"
abbr -a ga="git add"
abbr -a gcl="git clone"
abbr -a gdf="git diff"
abbr -a glo="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
abbr -a pbcopy="xclip -selection clipboard"
abbr -a pbpaste="xclip -selection clipboard -o"
abbr -a vi="nvim"
abbr -a vim="nvim"


set -xU EDITOR vim

# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

set -gx GOPATH $HOME/documents/programming/golang
set -gx PATH $GOPATH/bin $PATH

set -gx NPM_PACKAGES $HOME/.npm-packages
set -gx NODE_PATH $NPM_PACKAGES/lib/node_modules $NODE_PATH
set -gx PATH $NPM_PACKAGES/bin $PATH

set -gx TERM="xterm-256color"

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
source ~/.config/fish/nvm-wrapper/nvm.fish
rvm default
task list
