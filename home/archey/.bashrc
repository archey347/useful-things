# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export PS1='\n\[$(tput setaf 39)\]\u\[$(tput setaf 81)\]@\[$(tput setaf 77)\]\h\[$(tput setaf 226)\]:$(pwd) \[$(tput sgr0)\]\n$ '

