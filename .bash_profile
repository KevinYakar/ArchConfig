#
# ~/.bash_profile
#

append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

append_path '/home/kevin/.local/bin'
export PATH

BROWSER=/usr/bin/firefox

export LESSHISTFILE="-"
export GNUPGHOME="~/.local/share/gnupg"
export CUDA_CACHE_PATH="~/.cache/nv"
export PASSWORD_STORE_DIR="~/.local/share/gnupg/pass"

[[ -f ~/.bashrc ]] && . ~/.bashrc
startx

