# Install cloudvim

```
wget -O - https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/cloudvim.sh | sudo bash
```

or

```
curl -sSL https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/cloudvim.sh | sudo bash
```

# Install plugins in vim
Run :PluginInstall in vim

or

```
vim +PluginInstall +qall
```

# Load aliases
source .bashrc

# EC2 User data
```
# Descargar y ejecutar el script remoto
wget -O /tmp/cloudvim.sh https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/cloudvim.sh
chmod +x /tmp/cloudvim.sh
/tmp/cloudvim.sh

# Ejecutar :PluginInstall en Vim como el usuario ec2-user
sudo -u ec2-user -H sh -c "vim +PluginInstall +qall"
```
