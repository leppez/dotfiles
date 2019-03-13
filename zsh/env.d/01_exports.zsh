# Prefered editor and pager
export VISUAL=vim
export EDITOR=vim
export VIMINIT='let $MYVIMRC="$DOTFILES/vim/vimrc" | source $MYVIMRC'
export PAGER=less
export LESS="--RAW-CONTROL-CHARS --ignore-case --hilite-unread --LONG-PROMPT --window=-4"
export READNULLCMD=${PAGER}

# XDG basedir spec compliance
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME"=${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"

export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
export LESSHISTFILE="${XDG_DATA_HOME}/lesshst"
export MYSQL_HISTFILE="${XDG_DATA_HOME}/mysql_history"
export REDISCLI_HISTFILE="${XDG_DATA_HOME}/rediscli_history"
export BUNDLE_USER_CONFIG="${XDG_CONFIG_HOME}/bundle"
export BUNDLE_USER_CACHE="${XDG_CACHE_HOME}/bundle"
export BUNDLE_USER_PLUGIN="${XDG_DATA_HOME}/bundle"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export WINEPREFIX="${XDG_DATA_HOME}/wine"
export MACHINE_STORAGE_PATH="${XDG_DATA_HOME}/docker/machine"
export VAGRANT_HOME="${XDG_DATA_HOME}/vagrant"
export HTOPRC="${XDG_CONFIG_HOME}/htop/htoprc"
export PACKER_CONFIG="${XDG_CONFIG_HOME}/packer"
export PACKER_CACHE_DIR="${XDG_CACHE_HOME}/packer"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/config"
export NPM_CONFIG_CACHE="${XDG_CACHE_HOME}/npm"
export HTTPIE_CONFIG_DIR="${XDG_CONFIG_HOME}/httpie"
export ANSIBLE_LOCAL_TEMP="${XDG_RUNTIME_DIR}/ansible/tmp"
export GOPATH="${XDG_DATA_HOME}/go"
export GEM_HOME="${XDG_DATA_HOME}/gem"
export GEM_SPEC_CACHE="${XDG_CACHE_HOME}/gem"
export GEMRC="${XDG_CONFIG_HOME}/gem/gemrc"

# Ensure we have local paths enabled
PATH=/usr/local/bin:/usr/local/sbin:${PATH}

# Enable brew's coreutils on macOS, if installed
if [[ -d /usr/local/opt/coreutils/libexec/gnubin ]]; then
    PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
fi
if [[ -d /usr/local/opt/coreutils/libexec/gnuman ]]; then
    MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}
fi

# Enable local binaries and man pages
PATH="${HOME}/.local/bin":${PATH}
MANPATH="${XDG_DATA_HOME}/man":${MANPATH}

# Add go and ruby binaries to paths
PATH="${GOPATH}/bin":"${GEM_HOME}/bin":${PATH}

export PATH MANPATH
