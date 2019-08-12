Installing packages in new computers is a painfully process. Hopfully my experience of installing packages on different platforms can help.

# windows WSL ubuntu 16.04 LTS
These are commands used for windows WSL ubuntu 16.04 LTS.

## apt
Install apt, which is more user friendly, by apt-get.
```bash
sudo apt-get update
```

## Recommanded commands
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

## Github
For github users, these commands are not necessary but important.

---
1. git config

These settings will be keep at `~/.gitconfig` and provide informations when `git commit` is called. Replace `--global` flag by `--local` when specific config is used on specific repository.
```bash
git config --global user.email "jeff.yenchih.liao@gmail.com"
git config --global user.name "yenchihliao"
```
--- 
2. ssh key

Generating ssh-key for github, so that username and password are not needed every time when `git commit` is called. The repository should be **cloned with ssh** to have this feature.
```bash
#generate ssh key into .ssh file
ssh-keygen -t rsa -b 4096 -C "yen.yenchih.liao@gmail.com"
```
After having a ssh key, you can copy the public key `id_rsa.pub` to Github [New SSH Key](https://github.com/settings/keys). If the repository is not cloned with ssh, its remote url has to be changed using following commands.
```bash
git remote set-url origin https://github.com/USERNAME/REPOSITORY.git
git remote -v #just for checking
```
## Python
Install python2 and 3 along with pip 2 and 3. (note that the last `python[version] -m pip install --upgrade --user pip` will make the command `pip` equals to `pip[version]` if pip is update successfully) 
```bash
sudo apt install python2 python3
sudo apt install python-pip python3-pip
python2 -m pip install --upgrade --user pip
#pip install --upgrade pip //this command will do as well
hash -r	#the default binary file location of apt install pip(/usr/bin) and pip install is different(/usr/local/bin) 
#pip install --upgrade pip
python3 -m pip install --upgrade --user pip
#pip3 install --upgrade pip //this command will do as well
hash -r
```
---
1. newer version of python

The Python version provided by apt install isn't the latest version. To get newer ones, run the following commands.
```bash
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python[version]
```

update pip
```bash
python3.x -m pip install --upgrade --user pip
```

Install header files for Python extensions, Otherwise, some package will not be able to be installed(e.g web3)
```bash
sudo apt install python[version]-dev
```
---
2. Jupyter

There are mnay ways to install jupyter. This is just one of them. If you only want to use jupyter with specific version of python, use the corresponding pip to install it.
```bash
pip2 install --user jupyter
pip3 install --user jupyter
```

## NodeJS
```bash
sudo apt install nodejs npm
npm intall -g n
n latest	#or reference to https://nodejs.org/en/download/ to find a stable version
hash -r	#same reasoning as situation of updating pip
npm install -g npm@latest
hash -r
```

## Golang and its happy friends

Find newer version on https://golang.org/dl/ if updated.
```bash
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
mkdir ~/go
```       
Golang needs environment variables to be set. Either use my [.bashrc](https://github.com/yenchihliao/settingup/blob/master/rc/.bashrc.) file or add the following line to your own .bashrc and run `source .bashrc`.
```bash
#edit ~/.bashrc
export GOPATH=$HOME/go
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
```
### Rainbow
Install the command, `rainbow`, to your bash.
```
#In $this_repo/Rainbow
chmod 700 rainbow.sh
./rainbow.sh
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
```

To upgrade to newer version.
```bash
cd $GOPATH/src/github.com/tendermint/tendermint
git pull origin master
make install
```

# GCP ubuntu 16.04 LTS
These are commands for GCP ubuntu 16.04 LTS

## Python
Almost equals to commands used on WLS, but need some more commands when installing header files for more complex modules(e.g ethereum).
```bash
sudo apt install python[version]-dev
sudo apt install libssl-dev
```



