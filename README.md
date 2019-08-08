Installing packages in new computers is a painfully process.

# windows WSL ubuntu 16.04 LTS
These are commands used for windows WSL ubuntu 16.04 LTS. Hope it helps.

## apt
Install apt, which is more user friendly, by apt-get.
```
sudo apt-get update
```

## Recommanded commands
Fun and useful commands that everybody should get. ;)

### Fun stuff
```
sudo apt install thefuck
sudo apt install sl
sudo apt install figlet
sudo apt install cmatrix
```

### useful command
```
sudo apt install tree
sudo apt install silversearcher-ag
```

## Github
```
git config --global user.email "jeff.yenchih.liao@gmail.com"
git config --global user.name "yenchihliao"
```

## Python
Install python2 and 3 along with pip 2 and 3. (note that the last `python[version] -m pip install --upgrade --user pip` will make the command `pip` equals to `pip[version]` if pip is update successfully) 
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

### newer version of python 
```
	sudo add-apt-repository ppa:deadsnakes/ppa
	sudo apt update
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

### Jupyter
```
	pip2 install --user jupyter
	pip3 install --user jupyter
```

## NodeJS
```
sudo apt install nodejs npm
npm intall -g n
n latest	#or reference to https://nodejs.org/en/download/ to find a stable version
hash -r	#same reasoning as situation of updating pip
npm install -g npm@latest
hash -r
```

## Golang and its happy friends
* Find newer version on https://golang.org/dl/ if updated
* Both Golang and Tendermint need to set environment variable. You can find how I set in my [.bashrc](https://github.com/yenchihliao/SettingUp/blob/master/rc/.bashrc).

```
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
```

### Tendermint
BFT Consensus
```
mkdir go
go get github.com/tendermint/tendermint
cd $GOPATH/src/github.com/tendermint/tendermint
make get_tools
make install
```

# GCP ubuntu 16.04 LTS
These are commands for GCP ubuntu 16.04 LTS

## Python
Almost equals to commands used on WLS, but need some more commands when installing header files for more complex modules(e.g ethereum).
```
sudo apt install python[version]-dev
sudo apt install libssl-dev
```







