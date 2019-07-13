## my-vimrc

首先这是我的个人vim配置文件。
第一：当做一个自己的备份。
第二：分享一下自己的配置。
下面介绍详细过程与安装方法。
关于基础的vim命令和操作什么的。我写过一篇文章可以看看。[文章链接](https://mengchao.xyz/index.php/archives/146/)。不懂的可以自己查找一些资料

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
要记住，以后每添加一个插件都要执行一次这个命令。
以后要是想安装插件就在下面第五行中添加。就是`Plug "github用户名/项目名"`
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
### 'mhinz/vim-startify'
在终端输入vim的时候，会出现一个界面，比较好看，美化用的。
效果如下：
![vim](https://i.loli.net/2019/06/04/5cf647a07dca444223.png)

### 'w0ng/vim-hybrid'
用于配置颜色，想使用这个插件，要先执行以下几个命令，才能实现。
在末行模式下输入:w保存该文件，再在末行模式下输入:source ~/.vimrc使配置文件生效，接着在末行模式下输入:PlugInstall安装插件。待安装完成后，在末行模式下输入:qa退出。

创建~/.vim/colors文件夹
```c
mkdir ~/.vim/colors
```
将主题文件移动到colors文件夹下
```c
cp ~/.vim/plugged/vim-hybrid/colors/hybrid.vim ~/.vim/colors/hybrid.vim
```

使主题永久生效
接着修改.vimrc文件，在插件列表上面空行处添加如下内容
```c
set background=dark
colorscheme hybrid
```
### 'vim-airline/vim-airline'
这是一个在vim底下增加了一个状态栏美化的功能。

### 'Yggdroot/indentLine'
这是一个显示对其线的插件，经常写代码，看代码的你，相信会用得到的

### 'scrooloose/nerdtree'
这是一个在vim下输入:NERDTree,之后再左边栏显示文件夹目录的功能。

### 'connorholyday/vim-snazzy'
主题美化插件

### 'Xuyuanp/nerdtree-git-plugin'
这个插件能显示 git 管理的项目文件变更状态.

### 'vimwiki/vimwiki'
vimwiki是vim的一个插件, 可以在vim下建立个人维基. 不止如此, 还可以进行任务管理和个人日记管理.

### 'airblade/vim-gitgutter'
一个Vim插件，在'gutter'（符号列）中显示git diff。它显示已添加，修改或删除的行。

### 'jiangmiao/auto-pairs'
在输入/删除左括号时，能自动补上/删除右括号。

### 'ervandew/supertab'
SuperTab使Tab快捷键具有更快捷的上下文提示功能。 也就是一种自动补全插件

### 'vim-syntastic/syntastic'
语法检查，检查明显错误

### 'mileszs/ack.vim'
主要用来在项目里全局搜索某个单词,比如搜索函数名的时候

### 'scrooloose/nerdcommenter'
这是一款用于快速高效注释代码的插件

使用这款插件，你可以对多种文件类型的文件进行不同方式地、快速地注释。这对使用Vim来写代码或者修改配置文件的同学来说，无疑是提升效率和快感的一件利器。

### 'godlygeek/tabular'
代码对齐

### 'nathanaelkane/vim-indent-guides'
在代码中，一个用于可视显示缩进级别的Vim插件
