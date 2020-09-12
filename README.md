# dotfiles

```
git init --bare $HOME/.dotfiles

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

dotfiles config --local status.showUntrackedFiles no

echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc

dotfiles status

dotfiles add .vimrc

dotfiles commit -m "Add vimrc"

dotfiles add .bashrc

dotfiles commit -m "Add bashrc"

dotfiles push
```
---

```
git clone --bare https://github.com/USERNAME/dotfiles.git $HOME/.dotfiles

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

dotfiles checkout

polybar-themes to add

```
