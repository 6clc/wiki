## 检查commit信息的格式

```python
#!/usr/bin/env python
#coding=utf-8

import sys
import re
import io

def check_head(head_msg):
	if head_msg.startswith("Merge") or head_msg.startswith("Revert"):
		return True

	PATTERN = (
            r"(build|ci|docs|feat|fix|perf|refactor|style|test|chore|revert|bump)!?"
            r"(\(.*\)):(\s.*)"
        )
	pat = re.compile(PATTERN)
	m = re.match(pat, head_msg)
	
	if m is None:
		print("\033[1;35m commit format error, please check again \033[0m")
		return False
	
	return True

if __name__ == "__main__":
	
	is_ok = True

	with open(sys.argv[1], 'r') as f:
		for idx, line in enumerate(f):
			if idx == 0:
				is_ok = check_head(line)
			
			if not is_ok:
				sys.exit(1)

	print("Commit Message Pass!")
	sys.exit(0)
```