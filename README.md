# Overview
This repository has the following parts currently:  
1. The rc directory includes my settings upon vim, which includes the environmnet variable for golang already, and bash.  
3. Rainbow for fun
4. The README part, which mainly about module installation guide for different OS.

Installing packages on new OS(computers) is a painfully process. Hopfully my experience of installing packages on different platforms can help.

Before reading, note that the statements wrap by [ ] notation with only capital words in it is the ones you need to modify on your demand.

* [Ubuntu 16.04 LTS on windows WSL](#wsl)
* [Ubuntu 16.04 LTS on GCP](#gcp16)
* [Ubuntu 18.04 (on virtualbox)](#u1804)

# Ubuntu 16.04 LTS on windows WSL<a id="wsl"> </a>
These are things I installed on this OS.
* [apt](#wsl-apt): Make sure to use this command when you first install the OS. Use it again when you haven't run it for a long while.
* [Recommanded](#wsl-cmd)
* [Github](#wsl-gh)
* [Python](#wsl-py)
* [NodeJS](#wsl-njs)
* [Golang](#wsl-go)



## apt<a id="wsl-apt"> </a>
Update apt, which is more user friendly than apt-get.
```bash
#update packages maintain by apt
sudo apt update
#upgrade the updated package
sudo apt upgrade
```

## Recommanded commands<a id="wsl-cmd"> </a>
Fun and useful commands that everybody should get. ;)

---
1. Fun stuffs
```bash
sudo apt install thefuck
sudo apt install sl
sudo apt install figlet
sudo apt install cmatrix
```
---
2. useful commands
```bash
sudo apt install tree
sudo apt install silversearcher-ag
```

## Github<a id="wsl-gh"> </a>
For github users on commnad line interface, these commands may not be necessary but definitly be useful.

---
1. git config

These settings will be keep at `~/.gitconfig` and provide informations when `git commit` is called.  
Replace `--global` flag by `--local` when specific config is used on specific repository.
```bash
git config --global user.email "[MAIL_ID]@[MAIL_SERVER]"
git config --global user.name "[NAME]"
```
--- 
2. ssh key

Generating ssh-key for github, so that username and password are not needed every time when `git commit` is called.  
The repository should be **cloned with ssh** to have this feature.
```bash
#generate ssh key into .ssh file
ssh-keygen -t rsa -b 4096 -C "[MAIL_ID]@[MAIL_SERVER]"
```
After having a ssh key, you can copy the public key `id_rsa.pub` to Github [New SSH Key](https://github.com/settings/keys).  
If the repository is not cloned with ssh, its remote url has to be changed using following commands.
```bash
#Change url from https to 
git remote set-url origin git@github.com:[USERNAME]/[REPOSITORY].git
#just for checking
git remote -v 
```
## Python and its happy friends<a id="wsl-py"> </a>

Python2 won't be update anymore. But I will still talk about both python 2 and 3. If you just need one of them, just neglect some of my lines. Besides, if you only want to use newer version of python aside from the version provided by default `apt install` list, skip to [here](#Newer-version-of-Python).
```bash
#install python2.7.12
sudo apt install python2
#just checking
python2 --verion
#install python3.5.2 by the time I'm writing.
sudo apt install python3
#just checking
python3 --version
```
It's recommanded to set [alias](#wsl-py-ali)

### pip

[Pip](https://pypi.org/project/pip/) package installer for python. I mentioned both pip for python2 and 3 below. You only have to install the corresponding version of them.

```bash
#install pip for python2.7.12
sudo apt install python-pip
#just checking
pip --version
#install pip for python3.5.2 by the time I'm writing.
sudo apt install python3-pip
#just checking
pip3 --version

```
The pip version installed by `apt install` is very old. Use the following command to upgrade. 
```bash
#upgrade pip for python2
python2 -m pip install --upgrade --user pip #or: pip install --upgrade pip
#The default binary file location of apt install pip(/usr/bin) and pip install is different(/usr/local/bin). This command update the cached binary file location.
hash -r	
#just checking
pip --version
#upgrade pip for python3
python3 -m pip install --upgrade --user pip #or: pip3 install --upgrade pip
#same reason mentioned above
hash -r
#just checking
pip3 --version
```
It's recommanded to set [alias](#wsl-py-ali), and install the [dependencies](#wsl-py-dep).


### Newer version of Python

The Python version provided by apt install isn't the latest version. To get newer ones, run the following commands.
```bash
# Add things to your apt-install list
sudo add-apt-repository ppa:deadsnakes/ppa
# Update apt to newer version
sudo apt update
sudo apt install python[VERSION]
```

Install corresponding pip for new Python.
```bash
sudo apt install python3-pip
python[VERSION] -m pip install --upgrade --user pip
```

### Others
1. Dependencies<a id="wsl-py-dep"> </a>

Install header files for Python extensions, Otherwise, some package will not be able to be installed by `pip install`(e.g web3)
```bash
sudo apt install python[VERSION]-dev
```
2. Alias<a id="wsl-py-ali"> </a>

To use multiple version of python and pip at a time, you could make your perferable one as default by adding `alias` in your `.bashrc`.
```bash
echo "alias python=\"python[VERSION]\"" >> ~/.bashrc
echo "alias pip=\"pip[VERSION]\"" >> ~/.bashrc
```
Note that the last `python[VERSION] -m pip install --upgrade --user pip` will make the command `pip` equals to `pip[VERSION]` if pip is update successfully. It's better that you could make your perferable one as default by adding `alias` in your `.bashrc`.

3. Jupyter

There are many ways to install jupyter. This is just one of them. If you only want to use jupyter with specific version of python, use the corresponding pip to install it.
```bash
pip2 install --user jupyter
pip3 install --user jupyter
```

## NodeJS <a id="wsl-njs"> </a>
```bash
sudo apt install nodejs npm
npm intall -g n
n latest	#or reference to https://nodejs.org/en/download/ to find a stable version
hash -r	#same reasoning as situation of updating pip
npm install -g npm@latest
hash -r
```

## Golang and its happy friends<a id="wsl-go"> </a>

Find newer version on https://golang.org/dl/ if updated.
```bash
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
mkdir ~/go
```       
Golang needs environment variables to be set. Either use my [.bashrc](https://github.com/yenchihliao/settingup/blob/master/rc/.bashrc.) file or use the following commnads. 
```bash
#edit ~/.bashrc
echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.bashrc
source ~/.bashrc
```
### Rainbow
[Rainbow](https://github.com/yenchihliao/SettingUp/Rainbow) is wonderful.
```bash
go run rainbow
```
You can also put the binary to $PATH.
```bash
./rainbow.sh
#just checking
rainbow
```
### Glide

[Glide](https://glide.sh) is a package management for Go. 
```bash
curl https://glide.sh/get | sh
```


### Tendermint

[Tendermint](https://tendermint.com/) is a BFT Consensus.

```bash
cd ~/go
go get github.com/tendermint/tendermint
cd $GOPATH/src/github.com/tendermint/tendermint
make get_tools
make install
make build
```

To upgrade to newer version.
```bash
cd $GOPATH/src/github.com/tendermint/tendermint
git pull origin master
make install
```

# GCP ubuntu 16.04 LTS <a id="gcp16"> </a>
These are commands for GCP ubuntu 16.04 LTS

## Python and its happy friends<a id="gcp16-py"> </a>

Python2 won't be update anymore. But I will still talk about both python 2 and 3. If you just need one of them, just neglect some of my lines. Besides, if you only want to use newer version of python aside from the version provided by default `apt install` list, skip to [here](#Newer-version-of-Python).
```bash
#install python2.7.12
sudo apt install python2
#just checking
python2 --verion
#install python3.5.2 by the time I'm writing.
sudo apt install python3
#just checking
python3 --version
```
It's recommanded to set [alias](#wsl-py-ali)

### pip

[Pip](https://pypi.org/project/pip/) package installer for python. I mentioned both pip for python2 and 3 below. You only have to install the corresponding version of them.

```bash
#install pip for python2.7.12
sudo apt install python-pip
#just checking
pip --version
#install pip for python3.5.2 by the time I'm writing.
sudo apt install python3-pip
#just checking
pip3 --version

```
The pip version installed by `apt install` is very old. Use the following command to upgrade. 
```bash
#upgrade pip for python2
python2 -m pip install --upgrade --user pip #or: pip install --upgrade pip
#The default binary file location of apt install pip(/usr/bin) and pip install is different(/usr/local/bin). This command update the cached binary file location.
hash -r	
#just checking
pip --version
#upgrade pip for python3
python3 -m pip install --upgrade --user pip #or: pip3 install --upgrade pip
#same reason mentioned above
hash -r
#just checking
pip3 --version
```
It's recommanded to set [alias](#gcp16-py-ali), and install the [dependencies](#gcp16-py-dep).


### Newer version of Python

The Python version provided by apt install isn't the latest version. To get newer ones, run the following commands.
```bash
# Add things to your apt-install list
sudo add-apt-repository ppa:deadsnakes/ppa
# Update apt to newer version
sudo apt update
sudo apt install python[VERSION]
```

Install corresponding pip for new Python.
```bash
sudo apt install python3-pip
python[VERSION] -m pip install --upgrade --user pip
```

### Others
1. Dependencies<a id="gcp16-py-dep"> </a>

Install header files for Python extensions, Otherwise, some package will not be able to be installed by `pip install`(e.g web3)

```bash
sudo apt install python[VERSION]-dev
sudo apt install libssl-dev
```
2. Alias<a id="gcp16-py-ali"> </a>

To use multiple version of python and pip at a time, you could make your perferable one as default by adding `alias` in your `.bashrc`.
```bash
echo "alias python=\"python[VERSION]\"" >> ~/.bashrc
echo "alias pip=\"pip[VERSION]\"" >> ~/.bashrc
```
Note that the last `python[VERSION] -m pip install --upgrade --user pip` will make the command `pip` equals to `pip[VERSION]` if pip is update successfully. It's better that you could make your perferable one as default by adding `alias` in your `.bashrc`.

3. Jupyter

There are mnay ways to install jupyter. This is just one of them. If you only want to use jupyter with specific version of python, use the corresponding pip to install it.
```bash
pip2 install --user jupyter
pip3 install --user jupyter
```


# Ubuntu 18.04 <a id="u1804"> </a>
These are commands for Ubuntu 18.04

## VirtualBox Resolution
There are a lot of answers to modifying resolution of ubuntu on virtualbox. Most of them are outdated and result in errors. [This](https://www.tecmint.com/install-virtualbox-guest-additions-in-ubuntu/) is the solution which works. After upgrading all the module of apt, do the following:
```bash
sudo apt install build-essential dkms linux-headers-$(uname -r)
```



