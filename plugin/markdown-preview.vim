let s:markdown_preview_plugin_root = expand('<sfile>:p:h') . '/..'
let s:preview_bin = s:markdown_preview_plugin_root . '/bin/preview'

func! MarkdownPreview()
  w
  call system(s:preview_bin . ' ' . expand("%") . ' &')
endfunc

command! MarkdownPreview call MarkdownPreview()
