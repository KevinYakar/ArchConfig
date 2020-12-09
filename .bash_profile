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

[[ -f ~/.bashrc ]] && . ~/.bashrc

