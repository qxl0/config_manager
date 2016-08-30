" Quick unite shorcuts
nnoremap <silent> <leader>uf :<C-u>Unite buffer<CR>
nnoremap <silent> <leader>if :<C-u>Unite -start-insert buffer<CR>
nnoremap <silent> <leader>ut :<C-u>Unite tab:no-current<CR>
nnoremap <silent> <leader>it :<C-u>Unite -start-insert tab:no-current<CR>



" CtrlP search
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_rec/async','sorters','sorter_rank')

" replacing unite with ctrl-p
nnoremap <silent> <C-p> :Unite -start-insert -buffer-name=files -winheight=10 file_rec/neovim<CR>


nnoremap <leader>f :Unite grep:.<CR><C-R><C-W><CR>
nnoremap <silent><buffer><expr> <leader>v unite#do_action('vsplit')


let g:unite_source_menu_menus = {}


let g:unite_source_menu_menus.init_vim = {
            \ 'description': 'Edit your important init.vim information'
            \ }
let g:unite_source_menu_menus.init_vim.file_candidates = [
            \ ['init', '~/.config/nvim/init.vim'],
            \ ['plugins', '~/.config/nvim/init/02-plugins.vim']
            \ ]

nnoremap <leader>en :Unite menu:init_vim<CR>

" WIP
let g:unite_source_menu_menus.unite = {
      \     'description' : 'Start unite sources',
      \ }
let g:unite_source_menu_menus.unite.command_candidates = {
      \       'history'    : 'Unite history/command',
      \       'quickfix'   : 'Unite qflist -no-quit',
      \       'resume'     : 'Unite -buffer-name=resume resume',
      \       'directory'  : 'Unite -buffer-name=files '.
      \             '-default-action=lcd directory_mru',
      \       'mapping'    : 'Unite mapping',
      \       'message'    : 'Unite output:message',
      \       'scriptnames': 'Unite output:scriptnames',
      \     }
