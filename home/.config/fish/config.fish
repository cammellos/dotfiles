. "$HOME/.homesick/repos/homeshick/homeshick.fish"

abbr -a gst="git status"
abbr -a gco="git checkout"
abbr -a gl="git pull --rebase"
abbr -a gp="git push"
abbr -a gcp="git cherry-pick"
abbr -a gre="git rebase"
abbr -a ga="git add"
abbr -a gc="git commit"
abbr -a gcl="git clone"

set -xU EDITOR vim

# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
