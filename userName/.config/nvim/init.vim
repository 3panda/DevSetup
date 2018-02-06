"---------------------------------------------
"--内部エンコーディングの設定
"---------------------------------------------
"
"エンコードの指定
set encoding=utf-8
set fileencoding=utf-8
"改行コード
set fileformats=unix,dos

"set syntax=c.doxygen
"let g:load_doxygen_syntax=1

"---------------------------------------------
"--- 基本設定
"---------------------------------------------
"shell
set shell=/usr/local/bin/zsh

"ビープ音と画面フラッシュの停止（設定が効かない場合があるので注意）
set vb t_vb=


"ファイルに応じて見やすく色付けをしてくれる
syntax on
"検索したときにハイライトを付ける
set hlsearch

" 保管候補のポップアップの色設定
hi Pmenu guibg=#666666
hi PmenuSel guibg=#8cd0d3 guifg=#666666
hi PmenuSbar guibg=#333333


"行番号を付ける
set number

"改行コード
set fileformats=unix,dos
":set fileformat=dos (改行をWindowsの形式に変更。)
":set fileformat=mac (改行をMacの形式に変更。)
":set fileformat=unix (改行をUnixの形式に変更。)

"ファイルエンコーディングや文字コードをステータス行に表示
set laststatus=2
set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\

" 起動時に確実にIMEをoffにする
set iminsert=0

" 絶対に自動改行しない
set formatoptions=q
" 単語を途中で折らない
set linebreak

"日本語の行の連結時には空白を入力しない。
set formatoptions+=mM

"□や○の文字があってもカーソル位置がずれないようにする。
set ambiwidth=double

"画面最後の行をできる限り表示する。
set display+=lastline

"ローカル(やリモート)のパス構成をURL構成とマッチ
autocmd FileType html setlocal includeexpr=substitute(v:fname,'^????/','','') | setlocal path+=;/

"ノーマルモードでもエンターキーで改行
noremap <CR> o<ESC>

"ファイルに応じて見やすく色付けをしてくれる
syntax on
"検索したときにハイライトを付ける
set hlsearch


" ポップアップメニューの色指定
hi Pmenu ctermbg=4
hi PmenuSel ctermbg=8


"行番号を付ける
set number


"ローカル(やリモート)のパス構成をURL構成とマッチ
autocmd FileType html setlocal includeexpr=substitute(v:fname,'^????/','','') | setlocal path+=;/

"ノーマルモードでもエンターキーで改行
noremap <CR> o<ESC>

" 挿入モード終了時に IME 状態を保存しない
inoremap <silent> <Esc> <Esc>
inoremap <silent> <C-[> <Esc>


" 「日本語入力固定モード」切り替えキー
inoremap <silent> <C-j> <C-^>

"------------------------------------
"---キーバインドの制設定
"------------------------------------
"ノーマルモード
"クリップボードからペースト
nnoremap <C-p> "+p

"ビジュアルモード
"--カーソル操作
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Del>
"インサートモード
"--ノーマルモードへ
"inoremap <c-j> <esc>
"--hjkl"
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
"インサートモードでクリップボードの内容をペースト
inoremap <C-p> <ESC>"*pa

"Yankした情報を他のアプリケーションでも利用
set clipboard=unnamed

" 挿入モード終了時に IME 状態を保存しない
inoremap <silent> <Esc> <Esc>
inoremap <silent> <C-[> <Esc>

" 「日本語入力固定モード」切り替えキー
inoremap <silent> <C-j> <C-^>

" Normalモード切り替え時にIMEをOFF
if has('mac')
  let g:imeoff = 'osascript -e "tell application \"System Events\" to key code 102"'
  augroup MyIMEGroup
    autocmd!
    autocmd InsertLeave * :call system(g:imeoff)
  augroup END
endif


"カレントディレクトリ移動
command! -nargs=? -complete=dir -bang CD  call s:ChangeCurrentDir('<args>', '<bang>')
function! s:ChangeCurrentDir(directory, bang)
    if a:directory == ''
        lcd %:p:h
    else
        execute 'lcd' . a:directory
    endif

    if a:bang == ''
        pwd
    endif
endfunction



"------------------------------------
"---Terminalの設定
"------------------------------------

" neovim terminal mapping
if has('nvim')
    " 新しいタブでターミナルを起動
    nnoremap @t :tabe<CR>:terminal<CR>
    " Ctrl + q でターミナルを終了
    tnoremap <C-q> <C-\><C-n>:q<CR>
    " ESCでターミナルモードからノーマルモードへ
    tnoremap <ESC> <C-\><C-n>
endif


"------------------------------------
"---TABページの設定
"------------------------------------
"タブページのラインが常に表示
set showtabline=2

" gVimでもテキストベースのタブページを使う
set guioptions-=e

"------------------------------------
"--- Search
"------------------------------------
" 最後まで検索したら先頭へ戻る
set wrapscan

" 大文字小文字無視
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索
set smartcase

" インクリメンタルサーチ
set incsearch

" 検索文字をハイライト
set hlsearch

"Escの2回押しでハイライト消去
"nmap ;nohlsearch

"------------------------------------
"---インデントの設定
"------------------------------------
"" visual モードで連続して、インデント出来るように設定
vnoremap <silent> > >gv
vnoremap <silent> < <gv

"------------------------------------
"--- タブ関係の設定
"------------------------------------
" タブ文字を CTRL-I で表示し、行末に $ で表示する。（有効:list/無効:nolist）%
set list
" Listモード (訳注: オプション 'list' がオンのとき) に使われる文字を設定する
set listchars=tab:>>,extends:<,trail:-,eol:<

" ソフトタブ
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" タブ
" set noexpandtab
" set tabstop=4
" set shiftwidth=4

"ショートカット
nnoremap <Space>t t
nnoremap <Space>T T
nnoremap t <Nop>
nnoremap <silent> tc :<C-u>tabnew<CR>:tabmove<CR>
nnoremap <silent> tk :<C-u>tabclose<CR>
nnoremap <silent> tn :<C-u>tabnext<CR>
nnoremap <silent> tp :<C-u>tabprevious<CR>

"dein Scripts-----------------------------

" reset augroup
augroup MyAutoCmd
    autocmd!
augroup END

let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME

let g:python3_host_prog = '/usr/local/bin/python3.6'

" {{{ dein
let s:dein_dir = expand('$DATA/dein')

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

    " Auto Download
    if !isdirectory(s:dein_repo_dir)
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
    endif

    execute 'set runtimepath^=' . s:dein_repo_dir
endif


" dein.vim settings

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    let s:toml_dir = expand('$CONFIG/nvim')

    call dein#load_toml(s:toml_dir . '/plugins.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
    call dein#install()
endif
" }}}

"End dein Scripts-------------------------
"
"

""---------------------------------------------
"--w0rp/aleの設定
"---------------------------------------------
" エラー行に表示するマーク
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
" エラー行にカーソルをあわせた際に表示されるメッセージフォーマット
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" エラー表示の列を常時表示
let g:ale_sign_column_always = 1

" ファイルを開いたときにlint実行
let g:ale_lint_on_enter = 1
" ファイルを保存したときにlint実行
let g:ale_lint_on_save = 1
" 編集中のlintはしない
let g:ale_lint_on_text_changed = 'never'

" lint結果をロケーションリストとQuickFixには表示しない
" 出てると結構うざいしQuickFixを書き換えられるのは困る
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0

" 有効にするlinter
" 増やす場合は修正
let g:ale_linters = {
\   'python': ['flake8'],
\}

" ALE用プレフィックス
nmap [ale] <Nop>
map <C-k> [ale]
" エラー行にジャンプ
nmap <silent> [ale]<C-P> <Plug>(ale_previous)
nmap <silent> [ale]<C-N> <Plug>(ale_next)



""---------------------------------------------
"--vimprocの設定
"---------------------------------------------
" vimprocで非同期実行
" 成功時にバッファ、失敗時にQuickFixで表示
" 結果表示のサイズ調整など
let g:quickrun_config = {
    \ '_' : {
        \ 'runner' : 'vimproc',
        \ 'runner/vimproc/updatetime' : 40,
        \ 'outputter' : 'error',
        \ 'outputter/error/success' : 'buffer',
        \ 'outputter/error/error'   : 'quickfix',
        \ 'outputter/buffer/split' : ':botright 8sp',
    \ }
\}

" 実行時に前回の表示内容をクローズ&保存してから実行
let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r :cclose<CR>:write<CR>:QuickRun -mode n<CR>


""---------------------------------------------
"--ターミナルモードとneovim-remoteの設定
"---------------------------------------------

" Open terminal on new buffer
"autocmd VimEnter * if @% == '' && s:GetBufByte() == 0 | call Term()
"function! s:GetBufByte()
"  let byte = line2byte(line('$') + 1)
"  if byte == -1
"    return 0
"  else
"    return byte - 1
"  endif
"endfunction

" 最後のバッファが閉じたらVimを終了する
function! Term()
  call termopen(&shell, {'on_exit': 'OnExit'})
endfunction

function! CloseLastTerm()
  if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    :q
  endif
endfunction

function! OnExit(job_id, code, event)
  if a:code == 0
    call CloseLastTerm()
  endif
endfunction

" 端末以外のバッファにも適用
function! CloseBuf()
  if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    :q
  else
    :bd
  endif
endfunction

nnoremap <Leader>q :up<CR>:call CloseBuf()<CR>

" ターミナルモード中に ESC でコマンドモードに戻る
tnoremap <silent> <ESC> <C-\><C-n>

""---------------------------------------------
"--GUIの設定
"---------------------------------------------

set lines=40		" 縦幅　デフォルトは24
set columns=120		" 横幅　デフォルトは80
set showtabline=2	" タブを常に表示
set imdisable	" IMを無効化

set background=dark
colorscheme molokai

syntax on


set guifont=Andale\ Mono:h14

if has('gui_macvim')
inoremap <silent> <ESC> <ESC>:set iminsert=1<CR>
set iminsert=1 imsearch=1
endif
