## 模板

```python
import sys
import argparse

args = argparse.ArgumentParser()
args.add_argument("name") # “-为前缀的才是可选项”
args.add_argument("-a", "--age", type=str, required=False) # required只对“-”开头的有效

```

## 参考

[知乎](https://zhuanlan.zhihu.com/p/34395749)
[官方](https://docs.python.org/zh-cn/3/library/argparse.html)