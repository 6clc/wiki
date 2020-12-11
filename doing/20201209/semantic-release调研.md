
在项目中配置semantic-release工具，commit过程语义规范化提交。
项目push到git， CI运行完成后，自动根据commit信息更新tag，日志和Release。

## 已有工具
两种工具：standard-version和semantic-release。都可以根据commit信息生成CHANGLOG，更新tag。不同点在于

1. standard-version 侧重于在本地手动创建发行版，push tag后才发布。
2. semantic-release 全自动版本管理和软件包发布，不需要手动步骤。

## standard-version使用步骤

1. 规范化语义commit
2. standard-version命令自动打tag。
3. 执行git push --follow-tags origin master命令，发布新版本。

## semantic-release使用步骤

1. 规范化语义commit
2. push到git，ci完成后，自动发布新版本。


## standard-version配置方法

使用npm install -g standard-version安装即可。

## semantic-release配置方法

1. 项目中配置好.releaserc和package.json文件。
2. ci的配置文件中添加npx semantic-release命令。
3. 在ci环境中添加git token 和 npm token变量。






