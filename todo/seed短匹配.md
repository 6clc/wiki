```yml
variables:
  AAA_IMAGE: "aaa:bbb:ccc"
  BBB_IMAGE: "aaa:bbb:ccc"
  CCC_IMAGE: "aaa:bbb:ccc"
```

处理后输出

```
"AAA_IMAGE=aaa:bbb:ccc"
"BBB_IMAGE=aaa:bbb:ccc"
"CCC_IMAGE=aaa:bbb:ccc"
```

## 硬写

```shell
grep _IMAGE: $file | awk  -F ": " '{ printf("%s=%s", $1, $2) }'
```

