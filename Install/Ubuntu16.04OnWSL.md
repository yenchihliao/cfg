# Ubuntu 16.04 LTS on windows WSL
These are things I installed on this OS.
* [apt](#apt): Make sure to use this command when you first install the OS. Use it again when you haven't run it for a long while.
* [Recommended](#cmd)
* [Remote Connections](#rc)(github, ssh, sftp)
* [Python](#py)
* [NodeJS](#njs)
* [Golang](#go)



## apt<a id="apt"> </a>
Update apt, which is more user friendly than apt-get.
```bash
#update packages maintain by apt
sudo apt update
#upgrade the updated package
sudo apt upgrade
```

## Recommended commands<a id="cmd"> </a>
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

## Remote Connections <a id="rc"> </a>
* .ssh setup
* Github
* workstation

### .ssh setup
Generates a ssh-key for remote connections, so that password is not needed every time.  
```bash
# Make sure the generated key pair is in ~/.ssh directory. Create one if the directory doesn't exist.
ssh-keygen -t rsa -b 4096 -C "[MAIL_ID]@[MAIL_SERVER]"
```
To connect to remote server, server ip, server port, and username is needed. We can avoid all these by writing either shell command alias or write config file in .ssh (recommended). See the template [here](https://github.com/yenchihliao/OSModuleInstall/blob/master/config/.ssh/config). (Make sure the file is at `~/.ssh/config`). For example, the command, `$ssh [server]` is equal to `$ssh -p [port] [user]@[ip]` with the following config file.
```bash
Host [server]
	HostName [ip]
	User [user]
	IdentityFile ~/.ssh/[privatekey_file]
	Port [port]
```



### Github

For github users on commnad line interface, these commands may not be necessary but definitly be useful.
1. git config

These settings will be keep at `~/.gitconfig` and provide informations when `git commit` is called.  
Replace `--global` flag by `--local` when specific config is used on specific repository.
```bash
git config --global user.email "[MAIL_ID]@[MAIL_SERVER]"
git config --global user.name "[NAME]"
```
2. ssh key

* The repository should be **cloned with ssh** instead of http to use this feature.
* After having a ssh key locally, you need to copy the public key `id_rsa.pub` to Github [New SSH Key](https://github.com/settings/keys).  
* If the repository is not cloned with ssh, its remote url has to be changed using following commands.
```bash
#Change url from https to 
git remote set-url origin git@github.com:[USERNAME]/[REPOSITORY].git
#just for checking
git remote -v 
```

### Workstation
Upload your public key to server and append it to `~/.ssh/authorized_keys`. Create the file/directory if it doesn't exist.

## Python and its happy friends<a id="py"> </a>

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
It's recommended to set [alias](#ali)

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
It's recommended to set [alias](#ali), and install the [dependencies](#dep).


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
1. Dependencies<a id="dep"> </a>

Install header files for Python extensions, Otherwise, some package will not be able to be installed by `pip install`(e.g web3)
```bash
sudo apt install python[VERSION]-dev
```
2. Alias<a id="ali"> </a>

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

## NodeJS <a id="njs"> </a>
```bash
sudo apt install nodejs npm
npm intall -g n
n latest	#or reference to https://nodejs.org/en/download/ to find a stable version
hash -r	#same reasoning as situation of updating pip
npm install -g npm@latest
hash -r
```

## Golang and its happy friends<a id="go"> </a>

Find newer version on https://golang.org/dl/ if updated.
```bash
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
mkdir ~/go
```       
Golang needs environment variables to be set. Either use my [.bashrc](https://github.com/yenchihliao/OSModuleInstall/blob/master/config/ubuntu/.bashrc) file or use the following commnads. 
```bash
#edit ~/.bashrc
echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.bashrc
source ~/.bashrc
```
### Rainbow
[Rainbow](https://github.com/yenchihliao/OSModuleInstall/tree/master/Rainbow) is wonderful.
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
