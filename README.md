## my-vimrc
首先这是我的个人vim配置文件。
第一：当做一个自己的备份。
第二：分享一下自己的配置。
下面介绍详细过程与安装方法。

## 配置自己的vim
首先下载一个vim的插件管理器。我推荐vim-plug。安装方法如下：
在终端中输入如下命令
```c
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
然后可以根据我的配置文件修改你的文件，也可以直接替换你的文件。
下载好之后，替换你的配置文件（文件路径~/.vimrc）。
然后保存退出，再打开你的.vimrc。然后执行`:Plug Install`这个命令，就自动安装插件了。
以后要是想安装插件就在下面第五行中添加。就是`Plug "github用户名/项目名"
比如[https://github.com/vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
这是一个插件的项目地址，添加插件的方法就是`Plug vim-airline/vim-airline`。就是URL地址后面的部分。
```c
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Initialize plugin system
call plug#end()
```

## 介绍我的vimrc文件的功能和用法
我在vimrc文件中已经详细的注释了每句话的功能，可以参考。
下面说说插件的功能。


