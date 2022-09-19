## Useful Things

Some configs that I find useful.

### To install

```
source <(curl -s https://raw.githubusercontent.com/archey347/useful-things/main/install.sh)
```

#### .bashrc

NB: it is copied to .bash_aliases, so you'll need to manually copy it over to .bashrc if .bash_aliases isn't already included in your .bashrc.

Starts ssh-agent, with password if required for private key. Can be skipped by pressing enter.

Puts the prompt in this format:

```
user@machine:/some/dir
$
```
or if ssh-agent setup was successful:

```
user@machine:K:/some/dir
$
```

#### .nanorc

- Add line numbers
- Scroll per line rather than per page
- Enable Mouse scrolling

#### .gitconfig

- Add `lg1`, `lg2` and `lg3` that displays git tree graphically
- Use Linux line enddings
