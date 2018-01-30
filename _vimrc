"==== gvimĬ������ ===========================================================================
set nocompatible "�ر�  vi����ģʽ
source $VIMRUNTIME/vimrc_example.vim
""""source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"==== Vundle������� =========================================================================
 "set nocompatible               " be improved
 "filetype off                   " required! ��Ҫ�ģ�

 set rtp+=$VIM\vimfiles\plugged\vim-plug
 call plug#begin('$VIM/vimfiles/plugged')

 " vim-plug�Դ����¹��ܣ�����Ҫ������

 " My Bundles here �Զ���Ĳ��:
 "
 " original repos on github ����github�ϵĲ������ʽ��Bundle '������/�����')
 " vim-scripts repos �ٷ���Vim-scripts(��ʽ��Bundle '�����')
 " non github repos ���Է�github�ϵĲ��(��ʽ��Bundle 'git://������URL')

 " �����û����Զ������ڴ��к����

 Plug 'vimcn/vimcdoc', {'branch' : 'release'}
 " Vim�����ĵ�
 set helplang=cn " ���ð�������Ϊ����

 Plug 'scrooloose/nerdtree'
 " �ļ�������
 "Plug 'oblitum/bufkill'
 " ��nerdTree�����һ��buffer���ڹر�ʱ������������
 Plug 'majutsushi/tagbar'
 " ���ɺ��������б���TagList����
 let Tlist_Use_Right_Window=1
 let g:tagbar_left=1
 Plug 'tpope/vim-commentary'
 " ע�ʹ���Ĳ��
 Plug 'kien/ctrlp.vim'
 " ����Ŀ¼�µ��ļ�������Command-T�����ǲ�����ruby��������
 Plug 'jiangmiao/auto-pairs'
 " ���ɳɶԵ�(),[],{},"",''
 let g:AutoPairsFlyMode = 0
 let g:AutoPairsShortcutBackInsert = '<M-b>'
 Plug 'tpope/vim-surround'
 " �ڳɶԵ�(),[],{},"",''���ż�֮����в���
 Plug 'a.vim'
 " ��.cpp��.h����ת
 Plug 'bufexplorer.zip'
 " ���Buffer�Ĳ��
 Plug 'fholgado/minibufexpl.vim'
 let g:miniBufExplAutoStart=0
 let g:miniBufExplorerMoreThanOne=0
 ""Bundle 'oblitum/clang_complete'
 ""let g:clang_complete_auto=1  " �����Զ���ȫ(Ĭ�ϣ�1)
 ""let g:clang_complete_copen=1 " �ڼ�⵽����֮��򿪿����޸�����(Ĭ�ϣ�0)
 ""let g:clang_hl_errors=1      " ��clang�ķ�ʽ��������ʹ���(Ĭ�ϣ�1)
 ""let g:clang_periodic_quickfix=0  " �����Ը��¿����޸�����(Ĭ�ϣ�0)
 ""let g:clang_snippets=1       " ����snippets��ȫ(Ĭ��:0)
 ""let g:clang_conceal_snippets=1   " ʹ��Vim��conceal��������<#��#>,�Ӷ��綨����Ƭ��(Ĭ��:1)
 ""let g:clang_library_path="F:\Vim\vimfiles\Bundle\clang_complete" " ����libclang.dll��·��
 ""let g:clang_use_library=1    " ʹ��libclang.dll����
 ""set conceallevel=2           " �������ĵ�
 ""set concealcursor=vin        " �������ĵ�
 ""set completeopt=menu,menuone " �������ĵ�
 ""set pumheight=11             " �������ĵ�
 " �clang_complete����������
 ""Bundle 'osyo-manga/neocomplcache-clang_complete'
 " ���clang_complete��neocomplcache�ĳ�ͻ
 Plug 'Shougo/neocomplcache'
 let g:neocomplcache_force_overwrite_completefunc=1
 let g:neocomplcache_enable_at_startup = 1
 let g:neocomplcache_enable_smart_case = 1
 let g:neocomplcache_enable_camel_case_completion = 1
 let g:neocomplcache_enable_underbar_completion = 1
 let g:neocomplcache_min_syntax_length = 0
 " �clang_complete����������
 ""Bundle 'osyo-manga/neocomplcache-clang_complete'
 " ���clang_complete��neocomplcache�ĳ�ͻ
 ""Bundle 'nathanaelkane/vim-indent-guides'
 " let g:indent_guides_start_level=2
 " let g:indent_guides_guide_size=1
 " �ж��븨����
 Plug 'terryma/vim-multiple-cursors'
 " Sublime Text �Ķ���ѡȡ����
 Plug 'mattn/emmet-vim'
 " Zen-Coding html/css��ݲ��
 Plug 'Yggdroot/indentLine'
 let g:indentLine_char = '|'
 let g:indentLine_color_gui = '#666666'
 " ����������

 silent! call plug#end()
 "filetype plugin indent on     " required! ��Ҫ�ģ�
 "
 " Brief help vim-plug����ָ��
 " :PlugList          - list configured bundles �г��Ѱ�װ�Ĳ��
 " :PlugInstall(!)    - install(update) bundles ��װ(����)���������ļ��еĲ��
 " :PlugSearch(!) foo - search(or refresh cache first) for foo
 " ����(��ˢ�»���)foo
 " :PlugClean(!)      - confirm(or auto-approve) removal of unused bundles
 " (�Զ�)ɾ��δ��_vimrc�ж���Ĳ��
 "
 " NOTE: comments after Bundle command are not allowed..

"==== tags���� ===============================================================================
set tags=tags,.\tags;
set autochdir

"==== ����ӳ�� ===============================================================================
"�����л�
"nnoremap <C-Tab> <C-w><C-w>
nnoremap <C-Tab> :bn<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"�Զ���ȫ
 "<Tab>��Ϊ����ѡ��<S-Tab>��Ϊ����ѡ��
inoremap <expr><Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
"��ctags����tags
nnoremap <F11> :!ctags<Space>-R<Space>--c++-kinds=+px<Space>--fields=+iaS<Space>--extra=+q<CR>
nnoremap <F12> :!ctags<Space>-R<Space>--python-kinds=-i<CR>
"qmake����
nnoremap <C-F9> :!qmake -project<CR>
nnoremap <F9> :!qmake<CR>
"make����
nnoremap <F6> :cope<CR>:make<CR>
nnoremap <S-F4> :!explorer debug<CR>
nnoremap <C-F4> :!explorer release<CR>
"g++����
nnoremap <F5> :!g++ -o %:r.exe %<CR>:!%:r.exe<CR>
nnoremap <C-F5> :!g++ -static -o %:r.exe %<CR>:!%:r.exe<CR>
" json��ʽ��
nnoremap <F2> :%!python -m json.tool<CR>
"tag��ת
nmap <C-BS> <C-t>
nmap <C-CR> <C-]>
"������ѡ�е�����ͬ�ĵ���
nnoremap <C-i> #*

"==== VIM���� ================================================================================
winpos 32 64        		      " ���ô���λ��
set lines=36 columns=128	          " ���ô��ڳ���
set colorcolumn=91                " �����б߽����
set guioptions=m                  " ����ʾ�˵���
set guifont=Consolas:h11:cANSI  " ��������
colorscheme desert		              " ������ɫ����
set wrap                          " ���� �Զ�����(����ʾЧ���в�����vim������)
set textwidth=0                     " �Զ����г���(0λ���Զ�����)
set number		                  " ��ʾ�к�
set norelativenumber                " ����ʾ����к�
set nobackup        		      " ����  �Զ�����
set noundofile                  " ���� ���ɳ��������ļ�
set nocompatible        	      " ����  vi�ļ���ģʽ������vim�Լ���
set fileencoding=utf-8            " ����Ĭ���ַ�����Ϊutf-8(UCS-BOM�Ǵ�BOM��utf-8)
set fileencodings=ucs-bom,utf-8,shift_jis,cp936,gb18030,big5 "�����ַ�������˳��(cp936=GBK)
filetype plugin indent on         " ����  �ļ����ͼ��
set syntax=on       		      " ����  �﷨����
set confirm         		      " �ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ��
"set cindent         		      " C�����ṹ
set smartindent                   " ��������
set autoindent                    " �Զ���������������ϣ�
set shiftround                    " ��������
set tabstop=2                     " �趨  �Ʊ���ո���Ϊ2
set shiftwidth=2                  " �趨  �����ո���Ϊ2
set ignorecase smartcase          " ����  �������ܴ�Сд����(���ü�no-)
set expandtab   		          " ����  �ÿո�����Ʊ��(���ü�no-)
set incsearch       		      " ����  ����ʽ����(���ü�no-)
set history=255     		      " �趨  ������¼Ϊ255��

