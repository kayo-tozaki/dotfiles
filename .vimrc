" -------------------
" NeoBundle configure

set nocompatible

if has('vim_starting')
 set runtimepath+=~/.vim/bundle/neobundle.vim
endif 

" NeoBundle 初期化
call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
" vimFinder
NeoBundle 'Shougo/vimfiler'
" color schema
NeoBundle 'w0ng/vim-hybrid'

call neobundle#end()

" NeoBundle configure END
" ----------------

" Vi 互換モードオフ
set nocompatible

" ファイルタイププラグインの有効
filetype indent plugin on

" syntaxhighlight
syntax on

" バッファを保存しなくても他のバッファを表示できるようにする
set hidden

" コマンドライン補完を便利に
set wildmenu

" タイプ途中のコマンドを画面最下行に表示
set showcmd

" 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する
set hlsearch

" color schema
colorscheme hybrid
set background=dark

" オートインデント
set autoindent  
  
" 移動コマンド使用時の自動行頭移動の防止
set nostartofline 

" 画面最終行にルーラ表示
set ruler

" ステータスバーの常時表示
set laststatus=2

" バッファ変更時のエラー→保存確認の変更 
set confirm

" ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set visualbell

" 行番号表示
set number

" タブ文字の代わりにスペース2個を使う場合の設定。
" この場合、'tabstop'はデフォルトの8から変えない。
set shiftwidth=2
set softtabstop=2
set expandtab

" <C-L>で検索後の強調表示を解除する
nnoremap <C-L> :nohl<CR><C-L>
