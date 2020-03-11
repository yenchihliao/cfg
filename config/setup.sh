# !/bin/bash
# quick setup for unbuntu
if [ "$1" = "--silence" -o "$1" = "-s" ]
then
	cp .vimrc ~/.vimrc
	cp .tmux.conf ~/.tmux.conf
	cp .gitconfig ~/.gitconfig
	cp ubuntu/.bashrc ~/.bashrc
	cp .ssh/config ~/.ssh/config
else
	myInput="i"
	while [[ $myInput != "y" && "$myInput" != "n" ]]
	do
		echo "replace .vimrc ?((y)es, (n)o, (d)iff)"
		read myInput
		if [ $myInput = "y" ]; then
			cp .vimrc ~/.vimrc
		elif [ $myInput = "d" ]; then
			if [ -e ~/.vimrc ]; then
				diff -y --suppress-common-lines ~/.vimrc .vimrc
			else
				echo "you don't have ~/.vimrc"
			fi
		elif [ $myInput = "n" ]; then
			echo "no"
		else
			echo "unknow action"
		fi
	done
	myInput="i"
	while [[ $myInput != "y" && "$myInput" != "n" ]]
	do
		echo "replace .tmux.conf ?((y)es, (n)o, (d)iff)"
		read myInput;
		if [ $myInput = "y" ]; then
			cp .tmux.conf ~/.tmux.conf
		elif [ $myInput = "d" ]; then
			if [ -e ~/.tmux.conf ]; then
				diff -y --suppress-common-lines ~/.tmux.conf .tmux.conf
			else
				echo "you don't have ~/.tmux.conf"
			fi
		elif [ $myInput = "n" ]; then
			echo "no"
		else
			echo "unknow action"
		fi
	done
	myInput="i"
	while [[ $myInput != "y" && "$myInput" != "n" ]]
	do
		echo "replace .gitconfig ?((y)es, (n)o, (d)iff)"
		read myInput
		if [ $myInput = "y" ]; then
			cp .gitconfig ~/.gitconfig
		elif [ $myInput = "d" ]; then
			if [ -e ~/.gitconfig ]; then
				diff -y --suppress-common-lines ~/.gitconfig .gitconfig
			else
				echo "you don't have ~/.gitconfig"
			fi
		elif [ $myInput = "n" ]; then
			echo "no"
		else
			echo "unknow action"
		fi
	done
	myInput="i"
	while [[ $myInput != "y" && "$myInput" != "n" ]]
	do
		echo "replace .bashrc ?((y)es, (n)o, (d)iff)"
		read myInput
		if [ $myInput = "y" ]; then
			cp .bashrc ~/.bashrc
		elif [ $myInput = "d" ]; then
			if [ -e ~/.bashrc ]; then
				diff -y --suppress-common-lines ~/.bashrc .bashrc
			else
				echo "you don't have ~/.bashrc"
			fi
		elif [ $myInput = "n" ]; then
			echo "no"
		else
			echo "unknow action"
		fi
	done
	myInput="i"
	while [[ $myInput != "y" && "$myInput" != "n" ]]
	do
		echo "replace .ssh/config ?((y)es, (n)o, (d)iff)"
		read myInput
		if [ $myInput = "y" ]; then
			cp .ssh/config ~/.ssh/config
		elif [ $myInput = "d" ]; then
			if [ -e ~/.ssh/config ]; then
				diff -y --suppress-common-lines ~/.ssh/config .ssh/config
			else
				echo "you don't have ~/.ssh/config"
			fi
		elif [ $myInput = "n" ]; then
			echo "no"
		else
			echo "unknow action"
		fi
	done
fi
