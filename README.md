<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [项目简介](#项目简介)
* [安装指引](#安装指引)
  * [VIM版本及依赖软件](#VIM版本及依赖软件)
  * [配置安装](#配置安装)
* [使用方法](#使用方法)
* [License](#license)

<!-- ABOUT THE PROJECT -->
## 项目简介

（嵌入式开发）VIM配置，支持以下特性：

1. `vim-plug`插件管理
2. `nerdtree` `vim-choosewin` `vim-airline` 文件/窗口/状态栏管理
3. `undotree` `vim-autoformat` `tabular` `nerdcommenter` 代码编辑插件
4. `vim-interestingwords` `Leaderf` 关键字高亮/搜索
5. `coc.nvim` 自动补全

<!-- GETTING STARTED -->
## 安装指引

按照下面的步骤执行即可，如果有问题后期我会在下面列出解决方法。

### VIM版本及依赖软件

1. 安装 vim 版本 8.0+，支持 python3;
2. 安装`gtags` `ripgrep` `nodejs`

### 配置安装

> 如果已配置过 vim，需先备份`~/.vim` and `~/vimrc`

``` sh
git clone git@github.com:r1024/easyvim.git ~/.vim
cd ~/.vim && ./install.sh
```
启动 vim 后执行`:PluginInstall`

<!-- USAGE EXAMPLES -->
## 使用方法
- F5: 打开/关闭文件浏览窗口
- F6: 打开/关闭Undotree窗口
- F7: 美化当前文件格式，例如缩进
- F8: 选择区域按照`=`对齐

- ,k: 高亮/取消高亮光标所在单词
- ,K: 取消所有高亮单词

- C-b: 在当前buffer中查找光标所在单词
- C-f: 在指定目录下查找光标所在单词
- ,ld: 跳转到函数定义处
- ,lr: 跳转到函数引用处

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.
