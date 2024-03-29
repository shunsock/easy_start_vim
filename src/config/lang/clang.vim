" -----------------------------
"
"  Clang-format
" -----------------------------

set formatprg=clang-format\ --style\ google

" Set clang-format command path
let g:clang_format#command = "/opt/homebrew/bin/clang-format"

" Set code style to Google
let g:clang_format#code_style = "google"

" Set style options
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++20"}


" -----------------------------
"  Key mappings
"  -----------------------------

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
