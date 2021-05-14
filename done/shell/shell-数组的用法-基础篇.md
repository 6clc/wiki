## 声明

不像 JAVA/C 等强编程语言，在赋值前必须声明；SHELL 只是弱编程语言，可事先声明也可不声明；

```SHELL
declare -a array_name # 声明，也可以不声明
declare -a nums=(1 2 3 4) # 声明，同时赋值
unset array_name # 删除数组
unset nums[0] # 删除数组中的某个元素
```
## 定义

数组中的元素用“空格”隔开

```SHELL
name=(abc def ghi)
name=(
  abc
  def
  ghi
)
# 不按顺序定义数组
names=([0]=abc [2]=def [7]=ghi)
# ❯ echo ${names[2]}
# def
# ❯ echo ${names[1]}

# ❯ echo ${names[8]}
#
```

## 一般用法

### 1. 访问数组元素

使用 ${array_name[@]} 或者 ${array_name[*]} 都可以全部显示数组中的元素

### 2. 求数组长度

同样道理 ${#array_name[@]} 或者 ${#array_name[*]} 都可以用来求数组的长度

## 数组切片

```SHELL
array=(zero ont two three four)
$array # 默认取第一个元素
${array[0]} # 取索引是0的元素
${array[@]:1} # 取索引1以后的所有元素
${array[@]:1:3} # 从1开始向后取3位
${array[@]::3} #  从0开始向后取3位
${array[@]:(-2):1} #从倒数第2个开始，向后取1位，不会回到开头
new_array=(${array[@]:start:length}) # 得到新的数组

```

1. 通用的格式 ${array[@]: 起始位置: 长度}，中间以 ":" 隔开，如果第二项省略的话，就取后面所有的项

2. 切片后返回的是字符串，可以通过 新数组 =(${旧数组 [@]: 索引: 长度}) 来索引，参见上面最后一个例子

3. 起始位置可以为负数，但必须以放在 () 中，长度不能为负数，不能反向取数

## 参考

1. [https://blog.csdn.net/Jerry_1126/article/details/52027539](https://blog.csdn.net/Jerry_1126/article/details/52027539)