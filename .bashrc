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

echo '========================================================================'
echo 'Press enter to skip setting up key.'
echo ''
eval `ssh-agent`
ssh-add
KEY_SUCCESS=$?
echo '========================================================================'

# Display a K if setting up a key was successful
if [ $KEY_SUCCESS = 0 ]
then
 K=':K'
else
 K=''
fi

PS1='\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\u@\h$K\[`tput sgr0`\]:$PWD\n\$ '
