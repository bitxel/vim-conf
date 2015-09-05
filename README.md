# VIM conf for server and desktop use

This vim configuration file is based on [ma6174/vim](https://github.com/ma6174/vim). This version resembles conf files, seperates it into server conf and desktop conf, removes some useless and duplicated options.

### Server Configuration

Extra plugins is redundant for server side VIM, so branch `server` only contains basic configurations.

```
wget -qO- https://raw.githubusercontent.com/bitxel/vim-conf/server/setup.sh | sh
```

### Desktop Configuration

```
wget -qO- https://raw.githubusercontent.com/bitxel/vim-conf/master/setup.sh | sh
```
