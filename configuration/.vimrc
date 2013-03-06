" My .vimrc file

" --- Options ---------------------------------------------------------------

" Disable vi backwards compatability. Most systems do not use vi anymore, and we
" can gain access to the many cool features of vim.
set nocompatible        

" Use forward slashes for file names. This is useful for Windows users that
" detest the backslash (\) in file paths.
set shellslash          

" Visual bell to alert user instead of beeping. This is a matter of preference,
" and partly depends how annoying your system sounds are.
set vb                  

" Do not use backup files. If you remove this option, Vim will create a
" 'filename.ext~' as a backup, which I find unnecessary.
set nobk                

" Format options:
"   c: wrap comments at textwidth automatically
"   r: insert comment leader when you insert a new line while on a comment line
"   q: Using the gq format command on comments will regroup them appropriately
"   t: (OPTIONAL) auto wrap all text at the given textwidth
set formatoptions=crq   

" 80 characters wide - comments will wrap here.
set textwidth=80        

" Allow unsaved buffers to be hidden. This is very helpful! Without this, you
" cannot put buffers away if they have unsaved changes.
set hidden              

" Always show a status line at the bottom of each window.
set laststatus=2        

" Display current mode in your command area (INSERT, VISUAL, etc.).
set showmode            

" Make your command line area larger so that completion is easier.
set ch=2                

" Command line completion helper. Press <TAB> while typing a command or filename
" to get help with completion.
set wildmenu            

" Windows gvim does not have this (it's automatic)
if exists("&wildignorecase") 
  " Don't be case sensitive when tab-completing filenames
  set wildignorecase    
endif

" Hide the mouse pointer while typing if it is over the window.
set mousehide           

" Always keep cursor 8 lines from edge. This forces the window to scroll before
" your cursor gets to the very bottom to give you some context.
set scrolloff=8         

" Allow the cursor to go to 'invalid' places. This means that the cursor can
" move onto space that is not occupied by text (like moving between paragraphs).
set virtualedit=all     

" Disable coloring on long lines (helps with slowness when editing large files)
set synmaxcol=1024      

" Disable text wrapping by default -- you can remove this or change it on the
" fly as needed.
set nowrap              

" Allow backspace over indent, eol, and start of insert. Originally insert text
" was intended to JUST insert text, but this makes it feel like a more normal
" text editor which I find less frustrating.
set backspace=2         

" Change commands (cw, ci", etc.) will display a $ to mark how much text is
" being changed.
set cpoptions+=$        

" Highlight words as you search. Useful until you don't need them anymore. You
" can either toggle this on the fly, or you can do the lazy thing like me and
" search for a random string of characters to 'clear' the highlight.
set hlsearch            

" Search will continue past end of document and wrap around to the beginning
" (with a notice in the command bar).
set wrapscan            

" Search as you type. You can always press Esc to go back to where you started
" or Return to do the search.
set incsearch           

" Search will usually be case-insensitive, but if your search term uses at least
" one upper-case letter, then it will be case-sensitive.
set ignorecase          
set smartcase           

" Show command in bottom-right as you type it
set showcmd             

" Turn on syntax highlighting
syntax on               

" Tabstops are 2 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
" Pressing tab inserts spaces instead
set expandtab

" Custom status line thanks to Derek Wyatt. Shows:
"   Current buffer
"   [+] if it was changed since last save
"   Line number out of total numbers, with %
"   Column number
"   Buffer number
"   ASCII/Hex value of the character under the cursor
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

" Filetype specific stuff
filetype on
filetype plugin on
filetype indent on

" --- Mappings --------------------------------------------------------------

" Though custom mappings may seem intimidating at first, just know that the
" second part is the key combination you must press (e.g., ",w"), and the third
" part is what gets run as a result. Most of these apply to normal mode.

" Moving between wrapped lines -- if you have a wrapped line, then pressing j/k
" will move to the character above the one you are currently on.
nnoremap k gk
nnoremap j gj

" Indent modification keeps visual mode so you can repeat it.
vnoremap > >gv
vnoremap < <gv

" Use Ctrl+X, Ctrl+C and Ctrl+V to cut, copy and paste in their respective modes
vnoremap <C-X> "+x
vnoremap <C-C> "+y
inoremap <C-V> <C-O>"+gP
cnoremap <C-V> <C-R>+

" Let's make it easy to edit/source this file ('e'dit 'v'imrc; 's'ource 'v'imrc)
nmap <silent> ,ev :e $HOME/.vimrc<cr>
nmap <silent> ,sv :so $HOME/.vimrc<cr>

" Toggle text wrapping
nmap <silent> ,w :set invwrap<cr>:set wrap?<cr>

" Toggle search highlighting
nmap <silent> ,n :set invhls<cr>:set hls?<cr>

" cd to directory of file in current buffer
nmap <silent> ,cd :lcd %:h<cr>

" Move the cursor to different windows
noremap <silent> ,h :wincmd h<cr>
noremap <silent> ,j :wincmd j<cr>
noremap <silent> ,k :wincmd k<cr>
noremap <silent> ,l :wincmd l<cr>

" Ctrl+Backspace to delete prev word
imap <C-BS> <C-W>
cmap <C-BS> <C-W>

" --- Style and font --------------------------------------------------------

" Place the colorscheme of your choice in .vim/colors and put its name here
colorscheme default

" Changing the font is a bit different depending on which OS you are running on
" set guifont=Consolas:h10   " Windows/OSX
" set guifont=Consolas\ 10   " Linux

" Load plugins, if you choose to try any
execute pathogen#infect()
