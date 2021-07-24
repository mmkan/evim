""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Sections:
" -> 0: vim-plug                    [插件管理]
" -> 1: nerdtree                    [目录树]
" -> 2: undotree                    [回退工具]
" -> 3: vim-autoformat              [代码格式化]
" -> 4: tabular                     [符号对齐]
" -> 5: vim-interestingwords        [高亮选中]
" -> 6: vim-choosewin               [窗口切换]
" -> 7: vim-airline                 [状态栏]
" -> 8: Leaderf                     [模糊搜索]
" -> 9: coc.nvim                    [自动补全]
" ->10: nerdcommenter               [注释工具]
" ->
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => 0: vim-plug{{{
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'Chiel92/vim-autoformat'
Plug 'godlygeek/tabular'
Plug 'lfv89/vim-interestingwords'
Plug 't9md/vim-choosewin'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/LeaderF'
Plug 'neoclide/coc.nvim'
Plug 'preservim/nerdcommenter'
Plug 'Raimondi/delimitMate'
call plug#end()
" }}}

" => 1: [F5] nerdtree {{{
nnoremap <F5> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" => 2: [F6] undotree {{{
let g:undotree_DiffAutoOpen = 0
nnoremap <F6> :UndotreeToggle<CR>
" }}}

" => 3: [F7] vim-autoformat {{{
nnoremap <F7> :Autoformat<CR>
let g:autoformat_autoindent = 1
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 1
let g:formatdef_clangformat_google = '"clang-format -style google -"'
let g:formatters_c = ['clangformat_google']
" }}}

" => 4: [F8] tabular {{{
vnoremap <silent> <F8> :Tabularize /=<CR>
" }}}

" => 5: [k && K] vim-interestingwords {{{
" k and K
" }}}

" => 6: [-] vim-choosewin {{{
" invoke with '-'
nmap  -  <Plug>(choosewin)
" if you want to use overlay feature
let g:choosewin_overlay_enable = 1
" }}}

" => 7: vim-airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" }}}

" => 8: Leaderf {{{
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1            
let g:Lf_WindowPosition = 'popup'               
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_PreviewInPopup = 1                     
let g:Lf_PreviewResult = {'Function': 1, 'BufTag': 0, 'Rg': 1, 'Gtags': 1 }
let g:Lf_GtagsAutoGenerate = 0                  
let g:Lf_RootMarkers=['.Lf_project_root_marker']

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg -w --current-buffer -e %s ", expand("<cword>"))<CR><CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -w -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap <leader>lg :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap <leader>la :<C-U>Leaderf! rg --recall<CR>

noremap <leader>lb :<C-U>LeaderfBuffer<CR>

" should use `Leaderf gtags --update` first
noremap <leader>lr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>ld :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>lo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>ln :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>lp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

noremap <leader>lf :LeaderfFunction!<CR>

" }}}

" => 9: coc.nvim {{{
let g:coc_global_extensions = [
    \ 'coc-marketplace',
    \ 'coc-tabnine']

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <leader>h to show documentation in preview window.
nnoremap <silent><leader>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" }}}

" => 10: [,cc/,cu] nerdcommenter {{{
" cc or cs: commenter
" cu: cancel commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" }}}

