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
append_path '/opt/VIA'
append_path '.'
export PATH

export BROWSER=/usr/bin/firefox
export EDITOR=vim

export LESSHISTFILE="-"
export GNUPGHOME="~/.local/share/gnupg"
export CUDA_CACHE_PATH="~/.cache/nv"
export PASSWORD_STORE_DIR="~/.local/share/gnupg/pass"

export _JAVA_AWT_WM_NONREPARENTING=1

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    startx
fi

