set -gx PATH $HOME/.local/bin $PATH
export XDG_DATA_DIRS="$HOME/.icons:/usr/share/icons:$XDG_DATA_DIRS"
if status is-interactive
    # Commands to run in interactive sessions can go here
end
