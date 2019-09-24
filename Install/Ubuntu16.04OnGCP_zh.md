# GCP ubuntu 16.04 LTS 
這些是 GCP ubuntu 16.04 LTS 的指令

## Python 與他的快樂朋友們<a id="py"> </a>

Python2 已經不會再更新了，但此處我還是會提到 python 2 跟 3，如果你只需要其中一個，可以忽略我部分的文章。 除此之外，如果你想要使用 python 較新的版本或 `apt install` 列表中的預設版本, 可以直接跳到 [這裡](#Newer-version-of-Python) 。
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
這邊建議設定 [別名](#ali) (alias)。

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
這邊建議設定 [別名](#ali) (alias)，並安裝 [依賴](#dep)  (dependencies)。


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
1. 依賴(Dependencies)<a id="dep"> </a>

安裝 Python 延伸的標頭檔(header files)，否則將會有些套件無法用`pip install` 安裝(例如 web3 )。 

```bash
sudo apt install python[VERSION]-dev
sudo apt install libssl-dev
```
2. 別名(Alias)<a id="ali"> </a>

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


