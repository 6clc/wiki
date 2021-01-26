```vimrc
nnoremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
nnoremap <C-S-Tab> <C-W>W
inoremap <C-S-Tab> <C-O><C-W>W
```

：nnoremap 命令映射正常模式下的键盘，inoremap 命令映射插⼊模式下的键盘；正常模式
的映射简单直⽩，应该不需要解释，插⼊模式的映射使⽤了临时模式切换键 <C-O>（:help i_CTRLO），
在正常模式下执⾏相应的窗⼝命令，然后返回插⼊模式。使⽤这样的键盘映射之后，这两个快捷键在
正常模式和插⼊模式下就都可以使⽤了。
