let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_persistence = 1
let g:startify_lists = [
	  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
	  \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ ]

let g:startify_bookmarks = [
            \ { 'c': '~/Projects' },
            \ ]

let g:startify_custom_header = [
        \ ' _   _  _               _____  _                 _    _   __       ',
	\ '| | | |(_)             /  ___|| |               | |  (_) / _|      ', 
	\ '| | | | _  _ __ ___    \ `--. | |_   __ _  _ __ | |_  _ | |_  _   _ ',
	\ '| | | || || |_ ` _ \    `--. \| __| / _` || |__|| __|| ||  _|| | | | ',
	\ '\ \_/ /| || | | | | |  /\__/ /| |_ | (_| || |   | |_ | || |  | |_| | ',
	\ ' \___/ |_||_| |_| |_|  \____/  \__| \__,_||_|    \__||_||_|   \__, | ',
	\ '                                                               __/ | ',
	\ '                                                              |___/  ',
        \]
