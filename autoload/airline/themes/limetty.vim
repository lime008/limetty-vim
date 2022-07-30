" limetty
" theme format modified from wombat
" colors from lime08/limetty
"
"
"   limetty             XTERM
let s:base00 = '#292640' "236
let s:base01 = '#33304a' "237
let s:base02 = '#594671' "238
let s:base03 = '#7f7888' "244
let s:base04 = '#a5a5a9' "248
let s:base05 = '#e2e4e5' "254
let s:base06 = '#eff0eb' "255
let s:base07 = '#eeff96' "15
let s:base08 = '#e03d3d' "203
let s:base09 = '#ffbe3b' "215
let s:base0A = '#cea85d' "229
let s:base0B = '#d9ed00' "84
let s:base0C = '#53e0ad' "123
let s:base0D = '#2ec2e6' "81
let s:base0E = '#ee508a' "205
let s:base0F = '#d46991' "131

" Normal mode
"          [ guifg , guibg , ctermfg , ctermbg , opts ]
let s:N1 = [ s:base00 , s:base0D , 235 , 81 ]           " [ color of body and line-info ]
let s:N2 = [ s:base0D , s:base00 , 81 , 235 ]           " [ diffcount and file-info ]
let s:N3 = [ s:base0D , s:base00 , 81 , 235 ]           " [ filename ]
let s:N4 = [ s:base0D , 81 ]                            " [ buffer modified ]

" Insert mode
let s:I1 = [ s:base00 , s:base0B , 235 , 84 ]
let s:I2 = [ s:base0B , s:base00 , 84 , 235 ]
let s:I3 = [ s:base0B , s:base00 , 84 , 235 ]
let s:I4 = [ s:base0B , 84 ]

" Visual mode
let s:V1 = [ s:base00 , s:base0A , 235 , 229 ]
let s:V2 = [ s:base0A , s:base00 , 229 , 235 ]
let s:V3 = [ s:base0A , s:base00 , 229 , 235 ]
let s:V4 = [ s:base0A , 229 ]

" Replace mode
let s:R1 = [ s:base00 , s:base08 , 235 , 203 ]
let s:R2 = [ s:base08 , s:base00 , 203 , 235 ]
let s:R3 = [ s:base08 , s:base00 , 203 , 235 ]
let s:R4 = [ s:base08 , 203 ]

" Paste mode
let s:PA = [ s:base0B , 84 ]

" Info modified
let s:IM = [ s:base00 , 235 ]

" Inactive mode
let s:IA = [ '' , s:N3[1] , 244 , 235 , '' ] " [ color of bar on inactive splits ]

let g:airline#themes#limetty#palette = {}

let g:airline#themes#limetty#palette.accents = {
      \ 'red': [ s:base08 , '' , 203 , '' , '' ]
      \ }

let ER = [ s:base00 , s:base08 , 235 , 203 ]      " [ error color ]
let WI = [ s:base00 , s:base0A , 235 , 229 ]      " [ warning color ]

let g:airline#themes#limetty#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#limetty#palette.normal_modified = {
    \ 'airline_a': [ s:N1[0] , s:N4[0] , s:N1[2] , s:N4[1] , ''     ] ,
    \ 'airline_b': [ s:N4[0] , s:IM[0] , s:N4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:N4[0] , s:N3[1] , s:N4[1] , s:N3[3] , ''     ] }

let g:airline#themes#limetty#palette.normal.airline_error = ER
let g:airline#themes#limetty#palette.normal.airline_warning = WI
let g:airline#themes#limetty#palette.normal_modified.airline_error = ER
let g:airline#themes#limetty#palette.normal_modified.airline_warning = WI

let g:airline#themes#limetty#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#limetty#palette.insert_modified = {
    \ 'airline_a': [ s:I1[0] , s:I4[0] , s:I1[2] , s:I4[1] , ''     ] ,
    \ 'airline_b': [ s:I4[0] , s:IM[0] , s:I4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:I4[0] , s:N3[1] , s:I4[1] , s:N3[3] , ''     ] }

let g:airline#themes#limetty#palette.insert.airline_error = ER
let g:airline#themes#limetty#palette.insert.airline_warning = WI
let g:airline#themes#limetty#palette.insert_modified.airline_error = ER
let g:airline#themes#limetty#palette.insert_modified.airline_warning = WI

let g:airline#themes#limetty#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#limetty#palette.visual_modified = {
    \ 'airline_a': [ s:V1[0] , s:V4[0] , s:V1[2] , s:V4[1] , ''     ] ,
    \ 'airline_b': [ s:V4[0] , s:IM[0] , s:V4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:V4[0] , s:N3[1] , s:V4[1] , s:N3[3] , ''     ] }

let g:airline#themes#limetty#palette.visual.airline_error = ER
let g:airline#themes#limetty#palette.visual.airline_warning = WI
let g:airline#themes#limetty#palette.visual_modified.airline_error = ER
let g:airline#themes#limetty#palette.visual_modified.airline_warning = WI

let g:airline#themes#limetty#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#limetty#palette.replace_modified = {
    \ 'airline_a': [ s:R1[0] , s:R4[0] , s:R1[2] , s:R4[1] , ''     ] ,
    \ 'airline_b': [ s:R4[0] , s:IM[0] , s:R4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:R4[0] , s:N3[1] , s:R4[1] , s:N3[3] , ''     ] }

let g:airline#themes#limetty#palette.replace.airline_error = ER
let g:airline#themes#limetty#palette.replace.airline_warning = WI
let g:airline#themes#limetty#palette.replace_modified.airline_error = ER
let g:airline#themes#limetty#palette.replace_modified.airline_warning = WI

let g:airline#themes#limetty#palette.insert_paste = {
    \ 'airline_a': [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , ''     ] ,
    \ 'airline_b': [ s:PA[0] , s:IM[0] , s:PA[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:PA[0] , s:N3[1] , s:PA[1] , s:N3[3] , ''     ] }

let g:airline#themes#limetty#palette.insert_paste.airline_error = ER
let g:airline#themes#limetty#palette.insert_paste.airline_warning = WI

let g:airline#themes#limetty#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#limetty#palette.inactive_modified = {
    \ 'airline_c': [ s:N4[0] , ''      , s:N4[1] , ''      , ''     ] }

