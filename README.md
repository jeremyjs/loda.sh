# loda.sh

Forked from https://github.com/eridal/loda.sh

Simple bash helper functions for fun and profit.

## Installation

### Manual installation instructions
1. Clone this repository into your home folder (or other location)
1. Add a source line to your shell init files (i.e. ~/.bash_profile or ~/.bashrc)

```bash
cd ~
git clone https://github.com/jeremyjs/loda.sh .loda.sh
echo "\n# load loda.sh helper functions\nsource \$HOME/.loda.sh/_.sh\n" >> .bashrc
```

### Upgrade instructions
1. Navigate to the installed folder (`~/.loda.sh` is recommended)
1. Fetch the latest changes from the remote repository
1. Change to the master branch (or desired git ref)
1. Source the root file (TODO: unset old function names)

```bash
$(\
cd ~/.loda.sh && \
git remote update -p && \
git checkout origin/master && \
source ~/.loda.sh/_.sh
)
```

## TODO
* Finish install.sh script
* Unset old function names on upgrade
