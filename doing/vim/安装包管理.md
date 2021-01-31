1. 下载minpac

```bash
git clone https://github.com/k-takata/minpac.git \
~/.vim/pack/minpac/opt/minpac
```

2.  在~/.vimrc中添加如下代码

```vimrc
if exists('*minpac#init')
    " Minpac is loaded.
    call minpac#init()
    call minpac#add('k-takata/minpac', {'type': 'opt'})

    " Other plugins
endif

if has('eval')
    " Minpac commands
    command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
    command! PackClean packadd minpac | source $MYVIMRC | call minpac#clean()
    command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
endif
```

4. 重启vim即可

## 验证

5. “Other plugins”那⾏下⾯加⼊以下内容：

```vimrc
call minpac#add('tpope/vim-eunuch')
```

6. 保存⽂件配置文件后
  - :PackUpdate，可以看到安装的结果
  - :q，推出状态窗口
  - :PackClean，删除保存后，更新插件
  - :PackStatus，查看已经安装的插件

### 其他插件-最近使用文件

在vimrc中添加如下配置


插件名

```vimrc
yegappan/mru
```

非界面的显示使用
```vimrc
if !has('gui_running')
    " 设置⽂本菜单
    if has('wildmenu')
        set wildmenu
        set cpoptions-=<
        set wildcharm=<C-Z>
        nnoremap <F10> :emenu <C-Z>
        inoremap <F10> <C-O>:emenu <C-Z>
    endif
endif
```

在增加上⾯的配置之后，你就可以使⽤键 <F10>（当然你也可以换⽤其他键）加 <Tab> 来唤起 Vim 的⽂本
菜单了。如下图所⽰：
