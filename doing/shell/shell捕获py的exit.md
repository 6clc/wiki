```python
#! /usr/bin/python
def foofoo():
    ret = # Do logic
    if ret != 0:
        print repr(ret) + 'number of errors'
        sys.ext(1)
    else:
        print 'NO ERRORS!!!!'
        sys.exit(0)

def main(argv):
    # Do main stuff
    foofoo()

if __main__ == "__main__":
    main(sys.argv[1:]
```

```shell
# Store in a variable. Otherwise, it will be overwritten after the next command
exit_status=$?
if [ "${exit_status}" -ne 0 ];
then
    echo "exit ${exit_status}"
fi
echo "EXIT 0"
```

[https://stackoverflow.com/questions/44693740/get-the-exit-code-of-a-python-script-in-a-bash-script/44693824#44693824](https://stackoverflow.com/questions/44693740/get-the-exit-code-of-a-python-script-in-a-bash-script/44693824#44693824)