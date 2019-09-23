# Ubuntu 18.04 <a id="u1804"> </a>
These are commands for Ubuntu 18.04

## VirtualBox Resolution
There are a lot of answers to modifying resolution of ubuntu on virtualbox. Most of them are outdated and result in errors. [This](https://www.tecmint.com/install-virtualbox-guest-additions-in-ubuntu/) is the solution which works. After upgrading all the module of apt, do the following:
```bash
sudo apt install build-essential dkms linux-headers-$(uname -r)
```

# Ubuntu 18.04 <a id="u1804"> </a>
這些是 ubuntu 18.04 的指令

## VirtualBox 解析度
virtualBox 的 ubuntu 系統可以找到很多解答來調整解析度，但大部分已經過時或執行會出現錯誤。 [這裡](https://www.tecmint.com/install-virtualbox-guest-additions-in-ubuntu/) 是一個可以成功的方法。在更新完所有apt的模組後，執行下列指令：
```bash
sudo apt install build-essential dkms linux-headers-$(uname -r)
```
