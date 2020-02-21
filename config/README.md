1. To user my .vimrc file, the installation of Vundle is needed.
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```
2. To use full function of youcompleteme Plugin, see the installation guild [here](https://github.com/ycm-core/YouCompleteMe)
```bash
# For example,
# ubuntu16.04+ only
sudo apt install build-essential cmake python3-dev
python3 install.py
```
3. To have full undo history after reopening the file, add the directory.
```bash
mkdir ~/.vim/undo
```
4. To use tagbar, ctags is needed.
```bash
# ubuntu only
sudo apt install ctags
```
