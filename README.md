<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [项目简介](#项目简介)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## 项目简介

VIM配置，支持以下特性：

1. basic和plugin配置分离;
2. 支持函数查找和函数高亮

<!-- GETTING STARTED -->
## Getting Started

按照下面的步骤执行即可，如果有问题后期我会在下面列出解决方法。

### Prerequisites

1. 安装vim版本8.0+，支持python3;
2. 安装[ctags](https://github.com/universal-ctags/ctags.git);
3. 安装ripgrep
4. 安装nodejs


### Installation

Backup your `~/.vim` and `~/vimrc`, install Easyvim simply do following from your terminal.
```
git clone git@github.com:r1024/easyvim.git ~/.vim
cd ~/.vim
./install.sh
```
启动vim执行:PluginInstall

<!-- USAGE EXAMPLES -->
## Usage
- F5: 打开/关闭文件浏览
- F6: 打开/关闭Undotree
- F7: 美化当前文件格式
- F8: 按照=对齐

- C-b: 在当前buffer中查找光标所在单词
- C-f: 在指定目录下查找光标所在单词

- ,ld: 跳转到函数定义处
- ,lr: 跳转到函数引用处

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

[email] - wenchen.mails@gmail.com

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [amix/vimrc](https://github.com/amix/vimrc)
* [ma6174/vim](https://github.com/ma6174/vim)
* [spf13/spf13-vim](https://github.com/spf13/spf13-vim)
* [othneildrew/Best-README-Template](https://github.com/othneildrew/Best-README-Template)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=flat-square
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=flat-square
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=flat-square
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=flat-square
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=flat-square
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
