"Prettier
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#autoformat = 0
let g:prettier#config#print_width = 120
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
