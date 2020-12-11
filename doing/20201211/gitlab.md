公司的gitlab应该不支持release功能

1. gitlab版本查看

在浏览器中输入
```url
http://gitlab.software.cambricon.com/api/v4/version
```
获得结果如下
```json
{"version":"11.6.3","revision":"bc9391c"}
```

2. gitlab支持release版本再11.7之后，见官方文档介绍

https://docs.gitlab.com/ee/api/releases/