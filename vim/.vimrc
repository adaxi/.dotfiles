syntax enable

" Intialise pathogen
execute pathogen#infect()

" Allows you to save your documents when you forgot to type sudo.
" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee % >/dev/null

" Set colors
set t_Co=256 

" Airline
let g:airline_powerline_fonts=1
set laststatus=2

" Theme
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized 
