# Install cloudvim

```
wget https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/cloudvim.sh
chmod +x cloudvim.sh
./cloudvim.sh
source .bashrc
```

# Install plugins in vim
Run :PluginInstall in vim

or

```
vim +PluginInstall +qall
```

# Color shell
export PS1="\n\e[1;32m[\u@\h \W]\$ \e[m "
