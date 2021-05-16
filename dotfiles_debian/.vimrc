set nocompatible 		" NOTA:  Setting 'compatible'
			        	" cambia numerosas opciones, asi que alguna
			        	" opcion se debe colocar 'set' DESPUES de
			        	" 'set compatible'.

runtime! debian.vim		" Esta linea no deveria ser borrada ya que esto
			        	" asegura que varias opciones seran propiamente
			        	" colocadas para trabajar con los paquetes
			        	" relacionados a Vim.

			        	" Configurar Powerline para vim
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set ls=2
set t_Co=256

        				    " Los complementos se descargaran al directorio
		    	        	" especificado
call plug#begin('~/.vim/plugged')
			            	" Declarar lista de complementos
Plug 'powerline/powerline'
Plug 'doums/darcula'
Plug 'relastle/bluewery.vim'
Plug 'kyoz/purify', { 'rtp': 'vim'}
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

			            	" La lista finaliza aqui.
call plug#end()


"==============================================================================
" Ajustes basicos
"==============================================================================
syntax on			        " Permite a Vim mostrar partes del texto en otra
				            " fuente o color.
set number			        " Mostrar numeros de linea
set numberwidth=1		    " Numero minimo de columnas
filetype on 			    " Intenta detectar tipos de archivos
filetype plugin on          " habilita la carga de archivos de complementos 
                            " para tipos de archivos específicos
filetype plugin indent on	" Habilitar la carga del archivo de sangrias
				            " para el tipo de archivos
set clipboard=unnamed		" Acceder al contenido de clipboard del sistema
set history=500			    " Lineas de historial a recordar
set background=dark		    " Se usa fondo negro para cambiar color de letra
set title			        " Mostrar el titulo en la barra
set wildmenu			    " Menu completado en modo comando en <Tab>
set wildmode=full		    " <Tab> alterna entre todas las opciones
set showcmd			        " Mostrar comando (parcial) en la última línea de 
				            " la pantalla.
set backspace=indent,eol,start  " Permitir retroceder sobre todo en el modo de 
                                " inserción.
set tabstop=4			    " Iniciar la sangria en 4
set shiftwidth=4		    " cambiar el número de caracteres de espacio 
				            " insertados para la sangría
set expandtab			    " insertar caracteres de espacio siempre que se 
				            " presione la tecla de tabulación
set smarttab			    " afecta cómo se interpretan las pulsaciones de la
				            " tecla <TAB> dependiendo de dónde esté el cursor
set mouse=a			        " Habilite el uso del mouse para todos los modos
set encoding=utf8   		" La codificación mostrada.
set nobackup		    	" No crear archivos de respaldo
set noswapfile			    " No crear archivos de intercambio

au Filetype python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

                            " Arregla en columnas los archivos csv alineados a
                            " la izquierda
let g:csv_delim_test = ',;|'
let g:csv_autocmd_arrange = 1
let b:csv_arrange_align = 'l*'
let g:user_emmet_leader_key=',' "EMMET CONFIG redefine la tecla de lanzado
let g:tagalong_verbose = 1

