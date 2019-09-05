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
It's recommended to set [alias](#wsl-py-ali)

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
It's recommended to set [alias](#gcp16-py-ali), and install the [dependencies](#gcp16-py-dep).


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

There are many ways to install jupyter. This is just one of them. If you only want to use jupyter with specific version of python, use the corresponding pip to install it.
```bash
pip2 install --user jupyter
pip3 install --user jupyter
```


