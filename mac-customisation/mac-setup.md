# Steps for setting up a new macbook for Dom Clarke

Installing the essentials:

    - GitHUb SSH Key
    - Homebrew
    - VSCode
    - Brave
    - Chrome
    - Plex
    - Raycast
    - Raycast Scripts
    - Parallels Toolbox
    - rsync
    - OhMyZsh
    - ZSH AutoSuggestions and Highlighting
    - cli speedtest
    - custom aliases:
        - git fp
        - check
        - pass
    - Terminal Profile

## SSH Key

1. Use this command to create an SSH key for GitHub:
   - `ssh-keygen -t ed25519 -C "domclarke106@gmail.com"`
   - `cat ~/.ssh/id_ed25519.pub | pbcopy`
   - Open GitHub and go to Settings
   - SSH and GPG Keys
   - Add the new generated key that is in the clipboard
   - now run `git config --global alias.fp '!git fetch && git pull'` to setup Git fp alias

## Homebrew

1. Run this command to install homebrew:
   - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

2. Install the following Packages:
   - `brew install --cask visual-studio-code`
   - `brew install rsync`
   - `brew install --cask caffeine`
   - `brew install --cask raycast`
   - `brew tap teamookla/speedtest && brew update && brew install speedtest --force`
   - `brew install --cask plex`
   - `brew install --cask plex-media-server`
   - `brew install --cask parallels-toolbox`

3. Create a folder called "development" in the user home folder
   - Use this command to clone the QoL scripts Repo `git clone git@github.com:zajad909/QoL-Scripts.git`
   - Open Raycast and make sure the scripts are displaying correctly

4. Open VSCode and use `SHIFT CMD P` and search for the Install shell command `code`

## Oh My Zs

1. Run this command to install OhMyZsh
   - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
2. Run `code ~/.zshrc` in vscode terminal
   - edit the lines:

   - add this above the `source $ZSH/oh-my-zsh.sh`

     ```
     # Which plugins would you like to load?
     # Standard plugins can be found in $ZSH/plugins/
     # Custom plugins may be added to $ZSH_CUSTOM/plugins/
     # Example format: plugins=(rails git textmate ruby lighthouse)
     # Add wisely, as too many plugins slow down shell startup.
     plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

     # Docker Desktop completions
     fpath=("$HOME/.docker/completions" $fpath)

     # Homebrew
     export HOMEBREW_CURLRC="$HOME/.curlrc"
     export PATH="/opt/homebrew/bin:$PATH"

     source $ZSH/oh-my-zsh.sh`

     ```

   - Add these custom aliases into the bottom of ~/.zshrc:

     ```
     alias check="npm run type-check && npm run lint:check"

     alias pass='. /Users/domclarke/development/QoL-Scripts/password-generator/passphrase-generator.zsh && passwordGen'

     ```

   - Run these in terminal:
   - `cd ~/.oh-my-zsh/plugins`
   - `git clone git@github.com:zsh-users/zsh-autosuggestions.git`
   - `git clone git@github.com:zsh-users/zsh-syntax-highlighting.git`
   - `source ~/.zshrc`

## Terminal Preferences
