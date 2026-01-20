# Workaround for Cursor/vscode history restore keeping stale SSH_AUTH_SOCK
# Only update if we're already using a vscode socket
if [[ "$SSH_AUTH_SOCK" == *vscode* ]] && ls /run/user/$UID/vscode-ssh-auth-sock-* 1>/dev/null 2>&1; then
    export SSH_AUTH_SOCK=$(ls -t /run/user/$UID/vscode-ssh-auth-sock-* | head -1)
fi

# Git branch function for prompt
__git_branch() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
    if [[ -n "$branch" ]]; then
        if [[ "$branch" == "main" || "$branch" == "master" ]]; then
            echo " ($branch⚠️)"
        else
            echo " ($branch)"
        fi
    fi
}

# Set my preferred terminal prompt string
export PS1='\n\[$(tput setaf 39)\]\u\[$(tput setaf 81)\]@\[$(tput setaf 77)\]\h\[$(tput setaf 226)\]:$(pwd)\[$(tput setaf 245)\]$(__git_branch)\[$(tput sgr0)\]\n$ '
