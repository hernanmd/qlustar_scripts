# Description

Provides Qlustar utility scripts, 

# Requirements

Install [tmuxp](https://github.com/tmux-python/tmuxp) before running these scripts:

```bash
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py 
pip install --user tmuxp
git clone https://github.com/hernanmd/qlustar_scripts.git
cd qlustar_scripts
```
  
 # Usage
 
 ## Installation monitoring
 
 ```bash
 cd install
 ./install.sh
 ```
 
 ## Qlustar server monitoring
 
 ```bash
 cd monitor
 ./syslogviewer.sh
 ```
 
