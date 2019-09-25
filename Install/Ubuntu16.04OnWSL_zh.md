# Ubuntu 16.04 LTS on windows WSL<a id="wsl"> </a>
這些是我安裝在這個作業系統的套件。
* [apt](#wsl-apt): 第一次安裝這個作業系統時，請用這個指令確認；如果很久沒有使用這個作業系統時，也請用這個指令再確認一次。
* [推薦的安裝](#wsl-cmd)
* [Github](#wsl-gh)
* [Python](#wsl-py)
* [NodeJS](#wsl-njs)
* [Golang](#wsl-go)



## apt<a id="wsl-apt"> </a>
更新 apt，這對使用者來說比 apt-get 友善。
```bash
#更新 apt 所維護的套件
sudo apt update
#更新有新版本的套件
sudo apt upgrade
```

## 推薦的安裝指令<a id="wsl-cmd"> </a>
有趣且有用的指令，每個人都值得擁有。 ;)

---
1. 有趣的東西
```bash
sudo apt install thefuck
sudo apt install sl
sudo apt install figlet
sudo apt install cmatrix
```
---
2. 有用的指令
```bash
sudo apt install tree
sudo apt install silversearcher-ag
```

## Github<a id="wsl-gh"> </a>
針對使用命令列介面(command line interface)的 github 使用者，這些不是必要的指令，但絕對很有用。

---
1. git 配置

這些設定會存在 `~/.gitconfig` ，當你呼叫 `git commit` 時也會提供資訊。  
當你在特定的repository使用特定的配置時，請用 `--local` 旗(flag)替換 `--global` 旗(flag)。
```bash
git config --global user.email "[MAIL_ID]@[MAIL_SERVER]"
git config --global user.name "[NAME]"
```
--- 
2. ssh key

產生 github 的 ssh-key ， 這樣當你呼叫 `git commit` 時，就不用每次輸入使用者名稱和密碼。  
這個 repository 應該要 **用 ssh 複製(clone)** 才有此特性。 
```bash
#產生 ssh key 放到 .ssh 檔案裡
ssh-keygen -t rsa -b 4096 -C "[MAIL_ID]@[MAIL_SERVER]"
```
有了 ssh key 之後，你可以複製公鑰 `id_rsa.pub` 到 Github上。 [New SSH Key](https://github.com/settings/keys).  
如果你的 repository 不是用 ssh 複製的，那就需要用下列指令更改他的遠端url。
```bash
#把 url 從 https 更改成 
git remote set-url origin git@github.com:[USERNAME]/[REPOSITORY].git
#確認一下
git remote -v 
```
## Python 與他的快樂朋友們<a id="gcp16-py"> </a>

Python2 已經不會再更新了，但此處我還是會提到 python 2 跟 3，如果你只需要其中一個，可以忽略我部分的文章。 除此之外，如果你想要使用 python 較新的版本或 `apt install` 列表中的預設版本, 可以直接跳到 [這裡](#Python-較新的版本) 。
```bash
#安裝 python2.7.12
sudo apt install python2
#確認一下
python2 --verion
#安裝 python3.5.2 (我寫這份時的版本)
sudo apt install python3
#確認一下
python3 --version
```
這邊建議設定 [別名](#wsl-py-ali) (alias)。

### pip

[pip](https://pypi.org/project/pip/) 是python的套件安裝程式，我在下面會提到 python 2 和 3 中的 pip，你只需要安裝其中對應他們的版本。

```bash
#安裝 python2.7.12 的 pip
sudo apt install python-pip
#確認一下
pip --version
#安裝 python3.5.2 的 pip (我寫這份時的版本)
sudo apt install python3-pip
#確認一下
pip3 --version

```
`apt install` 安裝的 pip 版本非常舊，可以使用下列的指令去更新。 

```bash
#更新 python2 的 pip
python2 -m pip install --upgrade --user pip #或是: pip install --upgrade pip
#預設的apt install pip二進制檔案(binary file) 位置(/usr/bin) 和 pip install 的不同(/usr/local/bin). 
#這個指令可以更新他的暫存位置。
hash -r	
#確認一下
pip --version
#更新 python3 的 pip
python3 -m pip install --upgrade --user pip #或是: pip3 install --upgrade pip
#同上理由
hash -r
#確認一下
pip3 --version
```
這邊建議設定 [別名](#gcp16-py-ali) (alias)，並安裝 [依賴](#gcp16-py-dep)  (dependencies)。


### Python 較新的版本

apt install 提供的 Python 版本不是最新的，如果要拿到比較新的版本，請執行下列指令。
```bash
# 新增到 apt-install 的名單
sudo add-apt-repository ppa:deadsnakes/ppa
# 更新 apt 到新版本
sudo apt update
sudo apt install python[VERSION]
```

安裝對應到 Python 版本的 pip
```bash
sudo apt install python3-pip
python[VERSION] -m pip install --upgrade --user pip
```

### 其他
1. 依賴(Dependencies)<a id="gcp16-py-dep"> </a>

安裝 Python 延伸的標頭檔(header files)，否則將會有些套件無法用`pip install` 安裝(例如 web3 )。 

```bash
sudo apt install python[VERSION]-dev
sudo apt install libssl-dev
```
2. 別名(Alias)<a id="gcp16-py-ali"> </a>

同時使用多種版本的 python 和 pip ，你可以在 `.bashrc` 裡加上 `alias` 來挑選你喜歡的版本當作你的預設版本。
```bash
echo "alias python=\"python[VERSION]\"" >> ~/.bashrc
echo "alias pip=\"pip[VERSION]\"" >> ~/.bashrc
```
注意最後的 `python[VERSION] -m pip install --upgrade --user pip` 步驟，如果 pip 更新成功的話，會讓你的指令 `pip` 等同於 `pip[VERSION]` 。而此處如果在 `.bashrc` 加入 `alias` 把你喜歡的版本設成預設值會更好。

3. Jupyter

有很多種方法可以安裝 jupyter ，這只是其中一種方法。如果你只是要使用某特定 python 的版本的 jupyter ，請用下列對應的 pip 安裝。
```bash
pip2 install --user jupyter
pip3 install --user jupyter
```

## NodeJS <a id="wsl-njs"> </a>
```bash
sudo apt install nodejs npm
npm intall -g n
n latest	#或者參考 https://nodejs.org/en/download/ 安裝穩定的版本
hash -r	#與更新 pip 的狀況是一樣的理由
npm install -g npm@latest
hash -r
```

## Golang 與他的快樂朋友們<a id="wsl-go"> </a>

如果有更新，可以在 https://golang.org/dl/ 找到新版本。
```bash
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
mkdir ~/go
```       
Golang 需要設定環境變數，可以用我的 [.bashrc](https://github.com/yenchihliao/settingup/blob/master/rc/.bashrc.) 檔，或是使用下列指令。 
```bash
#編輯 ~/.bashrc
echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.bashrc
source ~/.bashrc
```
### Rainbow
完美無瑕的 [Rainbow](https://github.com/yenchihliao/SettingUp/Rainbow) 
```bash
go run rainbow
```
你也可以把他的二進制碼(binary) 放到 $PATH 裡。
```bash
./rainbow.sh
#確認一下
rainbow
```
### Glide

[Glide](https://glide.sh) 是 Go 的套件管理程式。 
```bash
curl https://glide.sh/get | sh
```


### Tendermint

[Tendermint](https://tendermint.com/) 是一個BFT共識。

```bash
cd ~/go
go get github.com/tendermint/tendermint
cd $GOPATH/src/github.com/tendermint/tendermint
make get_tools
make install
make build
```

更新至新版本。
```bash
cd $GOPATH/src/github.com/tendermint/tendermint
git pull origin master
make install
```