# Ubuntu 18.04 <a id="u1804"> </a>
These are commands for Ubuntu 18.04

## VirtualBox Resolution
There are a lot of answers to modifying resolution of ubuntu on virtualbox. Most of them are outdated and result in errors. [This](https://www.tecmint.com/install-virtualbox-guest-additions-in-ubuntu/) is the solution which works. After upgrading all the module of apt, do the following:
```bash
sudo apt install build-essential dkms linux-headers-$(uname -r)
```


