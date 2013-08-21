# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
#set fish_theme yasin
. $HOME/.config/fish/custom/themes/yasin/fish_prompt.fish

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

set fish_plugins source_sh git rvm path_title
set fish_greeting ""

# Path to your custom folder (default path is $FISH/custom)
set fish_custom $HOME/.config/fish/custom

# Load oh-my-fish cofiguration.
. $fish_path/oh-my-fish.fish
