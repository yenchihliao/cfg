# Configuration Files
Search for @yen comments, if any, to modify configuration files on demand.

## vim
* vimrcNoPlugin: `.vimrc` file without further installation for Plugins.
* .vimrc:
	* Install Vundle.
	```bash
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	```
	* To use full function of youcompleteme Plugin, see the installation guild [here](https://github.com/ycm-core/YouCompleteMe)
	```bash
	# For example,
	# ubuntu16.04+ only
	sudo apt install build-essential cmake python3-dev
	python3 install.py
	```
	* To have full undo history after reopening the file, add the directory.
	```bash
	mkdir ~/.vim/undo
	```
	* To use tagbar, ctags is needed.
	```bash
	# ubuntu only
	sudo apt install ctags
	```
## bash
Use the bash configuration file in corresponding OS directory.
## zsh
1. Install ohmyzsh
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
2. Install Plugins
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
