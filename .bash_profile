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
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

[[ -f ~/.bashrc ]] && . ~/.bashrc

