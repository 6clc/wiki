if !has('patch-8.0.210')
    " 进⼊插⼊模式时启⽤括号粘贴模式
    let &t_SI .= "\<Esc>[?2004h"
    " 退出插⼊模式时停⽤括号粘贴模式
    let &t_EI .= "\<Esc>[?2004l"
    " ⻅到 <Esc>[200~ 就调⽤ XTermPasteBegin
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
    
    function! XTermPasteBegin()
    " 设置使⽤ <Esc>[201~ 关闭粘贴模式
    set pastetoggle=<Esc>[201~
    " 开启粘贴模式
    set paste
    return ""
    endfunction
endif