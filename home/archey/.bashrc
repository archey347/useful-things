# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Source all files in ~/.bashrc.d/
if [ -d ~/.bashrc.d ]; then
    for file in ~/.bashrc.d/*.sh; do
        [ -r "$file" ] && . "$file"
    done
    unset file
fi
