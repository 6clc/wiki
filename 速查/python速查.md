## python返回信号给终端

```shell
#! /usr/bin/python
import sys
def main():
    sys.exit(1)

if __main__ == "__main__":
    main()
```

## 开头注释

```shell
#!/usr/bin/python	  # 写死了python
#!/usr/bin/env python # 会去寻找python，推荐
```

## 获取环境变量

```python
import os

env_dist = os.environ # 存储环境变量的dict

print env_dist.get('JAVA_HOME')
print env_dist['JAVA_HOME']
```
