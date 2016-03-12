" Vim syntax file
" Language:     creole
" Maintainer:   shellholic <shellholic+vim-creole@gmail.com>
" Contributor:  Ross Light <ross@zombiezen.com>
" Last Change:  2011-07-05

if exists("b:current_syntax")
    finish
endif

syn match creoleUrl     "\(https\?\|ftp\)://\([a-zA-Z0-9-_~%*@&=+$/#\[\]]\|[(,.?!:;"')]\(\s\|$\)\@!\)*"
syn match creoleUrl     "\<\([A-Z][a-z0-9.]\+\)\{2,}\>"
syn region creoleEscape matchgroup=creoleKeyword start=+\~+ end=+\s+ end=+$+

syn region creoleLinkBlock matchgroup=creoleKeyword start=+\[\[+ end=+\]\]+ contains=creoleLinkBar,creoleBold,creoleItalic,creoleUnderline,creoleBoldItalic,creoleBoldUnderline,creoleItalicBold,creoleItalicUnderline,creoleUnderlineBold,creoleUnderlineItalic,creoleBoldItalicUnderline,creoleBoldUnderlineItalic,creoleItalicBoldUnderline,creoleItalicUnderlineBold,creoleUnderlineBoldItalic,creoleUnderlineItalicBold,creoleMiscFormatting,creoleBreak,creoleCode,creoleUrl
syn region creoleImgBlock matchgroup=creoleKeyword start=+{{+ end=+}}+ contains=creoleLinkBar,creoleBold,creoleItalic,creoleUnderline,creoleBoldItalic,creoleBoldUnderline,creoleItalicBold,creoleItalicUnderline,creoleUnderlineBold,creoleUnderlineItalic,creoleBoldItalicUnderline,creoleBoldUnderlineItalic,creoleItalicBoldUnderline,creoleItalicUnderlineBold,creoleUnderlineBoldItalic,creoleUnderlineItalicBold,creoleMiscFormatting,creoleBreak,creoleCode,creoleUrl
syn match creoleLinkBar "|" contained
syn match creoleLinkBar "->" contained

syn region creoleCode matchgroup=creoleKeyword start=+{{{+ end=+}}}+ skip=+^\s\+}}}+

syn region creoleMiscFormatting   matchgroup=creoleKeyword start=+##+ end=+##+ end=+\n$+
syn region creoleMiscFormatting   matchgroup=creoleKeyword start=+__+ end=+__+ end=+\n$+
syn region creoleMiscFormatting   matchgroup=creoleKeyword start=+--+ end=+--+ end=+\n$+
syn region creoleMiscFormatting   matchgroup=creoleKeyword start=+\^\^+ end=+\^\^+ end=+\n$+
syn region creoleMiscFormatting   matchgroup=creoleKeyword start=+,,+ end=+,,+ end=+\n$+

syn region creolePlugin   matchgroup=creoleKeyword start=+<<+ end=+>>+ end=+$+

syn region creoleBold   matchgroup=creoleKeyword start=+\*\*+ end=+\*\*+ end=+\(\n\n\)\@=+ end=+\(\n[*#:;=>]\)\@=+ contains=creoleBoldItalic,creoleBoldUnderline,creoleLinkBlock
syn region creoleItalicBold matchgroup=creoleKeyword start=+\*\*+ end=+\*\*+ end=+\(\n\n\)\@=+ contained contains=creoleItalicBoldUnderline,creoleLinkBlock
syn region creoleUnderlineBold matchgroup=creoleKeyword start=+\*\*+ end=+\*\*+ end=+\(\n\n\)\@=+ contained contains=creoleUnderlineBoldItalic,creoleLinkBlock
syn region creoleItalicUnderlineBold matchgroup=creoleKeyword start=+\*\*+ end=+\*\*+ end=+\(\n\n\)\@=+ contained contains=creoleLinkBlock
syn region creoleUnderlineItalicBold matchgroup=creoleKeyword start=+\*\*+ end=+\*\*+ end=+\(\n\n\)\@=+ contained contains=creoleLinkBlock

syn region creoleItalic matchgroup=creoleKeyword start=+//+ end=+//+ end=+\(\n\n\)\@=+ skip=+://+ contains=creoleItalicBold,creoleItalicUnderline,creoleLinkBlock
syn region creoleBoldItalic matchgroup=creoleKeyword start=+//+ end=+//+ end=+\(\n\n\)\@=+ contained contains=creoleBoldItalicUnderline,creoleLinkBlock
syn region creoleUnderlineItalic matchgroup=creoleKeyword start=+//+ end=+//+ end=+\(\n\n\)\@=+ contained contains=creoleUnderlineItalicBold,creoleLinkBlock
syn region creoleBoldUnderlineItalic matchgroup=creoleKeyword start=+//+ end=+//+ end=+\(\n\n\)\@=+ contained contains=creoleLinkBlock
syn region creoleUnderlineBoldItalic matchgroup=creoleKeyword start=+//+ end=+//+ end=+\(\n\n\)\@=+ contained contains=creoleLinkBlock

syn region creoleUnderline matchgroup=creoleKeyword start=+__+ end=+__+ end=+\(\n\n\)\@=+ contains=creoleUnderlineItalic,creoleUnderlineBold,creoleLinkBlock
syn region creoleBoldUnderline matchgroup=creoleKeyword start=+__+ end=+__+ end=+\(\n\n\)\@=+ contained contains=creoleBoldUnderlineItalic,creoleLinkBlock
syn region creoleItalicUnderline matchgroup=creoleKeyword start=+__+ end=+__+ end=+\(\n\n\)\@=+ contained contains=creoleItalicUnderlineBold,creoleLinkBlock
syn region creoleBoldItalicUnderline matchgroup=creoleKeyword start=+__+ end=+__+ end=+\(\n\n\)\@=+ contained contains=creoleLinkBlock
syn region creoleItalicBoldUnderline matchgroup=creoleKeyword start=+__+ end=+__+ end=+\(\n\n\)\@=+ contained contains=creoleLinkBlock

syn region creoleH1     matchgroup=creoleHead start="^\s*=[^=]" end="\(\s*=\+\s*\)\?$"
syn region creoleH2     matchgroup=creoleHead start="^\s*==[^=]" end="\(\s*=\+\s*\)\?$"
syn region creoleH3     matchgroup=creoleHead start="^\s*===[^=]" end="\(\s*=\+\s*\)\?$"
syn region creoleH4     matchgroup=creoleHead start="^\s*====[^=]" end="\(\s*=\+\s*\)\?$"
syn region creoleH5     matchgroup=creoleHead start="^\s*=====[^=]" end="\(\s*=\+\s*\)\?$"
syn region creoleH6     matchgroup=creoleHead start="^\s*======[^=]" end="\(\s*=\+\s*\)\?$"

syn region creoleTableLine matchgroup=creoleTableBorder start=+^\s*|=\?+ end=+|\?\s*$+ contains=creoleTableCell,creoleTableBorder
syn match creoleTableCell "[^|]*\(|=\?\)\@!" contained contains=creoleBold,creoleItalic,creoleUnderline,creoleBoldItalic,creoleBoldUnderline,creoleItalicBold,creoleItalicUnderline,creoleUnderlineBold,creoleUnderlineItalic,creoleBoldItalicUnderline,creoleBoldUnderlineItalic,creoleItalicBoldUnderline,creoleItalicUnderlineBold,creoleUnderlineBoldItalic,creoleUnderlineItalicBold,creoleMiscFormatting,creoleBreak,creoleCode
syn match creoleTableBorder "|=\?" contained

syn match creoleHRule   "^\s*-----*\s*$"
syn match creoleBreak   "\\\\"

syn cluster creoleInline contains=creoleUrl,creoleEscape,creoleLinkBlock,creoleImgBlock,creoleCode,creoleMiscFormatting,creolePlugin,creoleBold,creoleItalic,creoleUnderline,creoleBoldItalic,creoleBoldUnderline,creoleItalicBold,creoleItalicUnderline,creoleUnderlineBold,creoleUnderlineItalic,creoleBoldItalicUnderline,creoleBoldUnderlineItalic,creoleItalicBoldUnderline,creoleItalicUnderlineBold,creoleUnderlineBoldItalic,creoleUnderlineItalicBold,creoleBreak

syn region creoleList     matchgroup=creoleOperator start="^\s*\(\*\|\#\)\+" end="\n\n" end="\n\([*#:;=>]\)\@=" contains=@creoleInline
syn region creoleList     matchgroup=creoleOperator start="^\s*\:\+" end="\n\n" end="\n\([*#:;=>]\)\@=" contains=@creoleInline
syn region creoleList     matchgroup=creoleOperator start="^\s*>\+" end="\n\n" end="\n\([*#:;=>]\)\@=" contains=@creoleInline
syn region creoleList     matchgroup=creoleOperator start="^\s*;" end="\n\n" end="\n\([*#:;=>]\)\@=" contains=@creoleInline

hi def link creoleUrl Underlined
hi def link creoleLinkText Todo
hi def link creoleCode Comment
hi def link creolePlugin Statement
hi def link creoleOperator Statement
hi def link creoleKeyword Special
hi def link creoleHead Statement
hi def link creoleH1 Title
hi def link creoleH2 creoleH1
hi def link creoleH3 creoleH2
hi def link creoleH4 creoleH3
hi def link creoleH5 creoleH4
hi def link creoleH6 creoleH5
hi def link creoleHRule Keyword
hi def link creoleBreak Special
hi def link creoleLinkBar Special
hi def link creoleTableBorder Keyword

" inspired by "html.vim"
hi def creoleBold                term=bold cterm=bold gui=bold
hi def creoleBoldItalic          term=bold,italic cterm=bold,italic gui=bold,italic
hi def creoleBoldUnderline       term=bold,underline cterm=bold,underline gui=bold,underline
hi def creoleBoldUnderlineItalic term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline
hi def creoleBoldItalicUnderline term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline

hi def creoleItalic              term=italic cterm=italic gui=italic
hi def creoleItalicBold          term=bold,italic cterm=bold,italic gui=bold,italic
hi def creoleItalicUnderline     term=italic,underline cterm=italic,underline gui=italic,underline
hi def creoleItalicBoldUnderline term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline
hi def creoleItalicUnderlineBold term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline

hi def creoleUnderline           term=underline cterm=underline gui=underline
hi def creoleUnderlineBold       term=bold,underline cterm=bold,underline gui=bold,underline
hi def creoleUnderlineItalic     term=italic,underline cterm=italic,underline gui=italic,underline
hi def creoleUnderlineBoldItalic term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline
hi def creoleUnderlineItalicBold term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline

hi def link creoleMiscFormatting Comment
