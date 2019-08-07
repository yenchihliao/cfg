Installing packages in new computers is a painfully process. These are commands used for windows WSL ubuntu 16.04 LTS. Hope it helps.

# Update for "$apt install" command
sudo apt-get update
# Recommanded commands
## Fun stuff
```
sudo apt install thefuck
sudo apt install sl
sudo apt install figlet
sudo apt install cmatrix
```
## useful command
```
sudo apt install tree
sudo apt install silversearcher-ag
```
# Github
```
git config --global user.email "jeff.yenchih.liao@gmail.com"
git config --global user.name "yenchihliao"
```
# Python
```
sudo apt install python-pip python3-pip
python2 -m pip install --upgrade --user pip
#pip install --upgrade pip //this command will do as well
hash -r	#the default binary file location of apt install pip(/usr/bin) and pip install is different(/usr/local/bin) 
#pip install --upgrade pip
python3 -m pip install --upgrade --user pip
#pip3 install --upgrade pip //this command will do as well
hash -r
```
## newer version of python 
```
	sudo add-apt-repository ppa:deadsnakes/ppa
	sudo apt install python[version]
```
update pip
```
	python3.x -m pip install --upgrade --user pip
```
Install header files for Python extensions, Otherwise, some package will not be able to be installed(e.g web3)
```
	sudo apt install python[version]-dev
```
## Jupyter
```
	pip2 install --user jupyter
	pip3 install --user jupyter
```
# NodeJS
```
sudo apt install nodejs npm
npm intall -g n
n latest	#or reference to https://nodejs.org/en/download/ to find a stable version
hash -r	#same reasoning as situation of updating pip
npm install -g npm@latest
hash -r
```
# Golang and it's happy friends
Find newer version on https://golang.org/dl/ if updated
```
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
```
## Tendermint
BFT Consensus
```
mkdir go
go get github.com/tendermint/tendermint
cd $GOPATH/src/github.com/tendermint/tendermint
make get_tools
make install
```
