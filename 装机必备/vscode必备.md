基本已经同步在gist上了，只做粗浅记录

1. 设置空格字符的颜色 https://www.coder.work/article/7015954
2. [https://zhuanlan.zhihu.com/p/102385239](https://zhuanlan.zhihu.com/p/102385239)

## 安装LeetCode的问题

1. 英文版的LeetCode只能通过cookies登录
2. 中文版的可以通过账户登录
3. .leetcode的文件夹名字不可以被修改
[https://zhuanlan.zhihu.com/p/119999079](https://zhuanlan.zhihu.com/p/119999079)

## vscode显示空格

[https://blog.csdn.net/bmzk123/article/details/86501706](https://blog.csdn.net/bmzk123/article/details/86501706)

## 查找空行

```shell
^\s*(?=\r?$)\n
```

## 自定义文件后缀的内容匹配

[https://code.visualstudio.com/docs/languages/overview#_adding-a-file-extension-to-a-language](https://code.visualstudio.com/docs/languages/overview#_adding-a-file-extension-to-a-language)

**php例子如下**
```json
"files.associations": {
    "*.php4": "php",
    "*.php5": "php"
}
```

## 匹配空格

```shell
^\s*(?=\r?$)\n
```