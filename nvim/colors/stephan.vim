


" Colorscheme initialization "{{{
" ---------------------------------------------------------------------
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "stephan"

"}}}


" Color hexadecimal palettes"{{{
" ---------------------------------------------------------------------
let s:vmode       = "cterm"
if g:solarized_termcolors == 256
    	
    if &background == "dark"
    
		let s:base03      = "233"	" Background Tone Dark	(default: 234)
		let s:base02      = "235"	" Background Tone Dark - Seitenleiste (Zeilennummern) (default: 235)
		let s:base01      = "243"	" Content - Zeilennummern und Kommentare (default: 239)
		let s:base00      = "245"	" Content - (default: 240)
		let s:base0       = "252"	" Content - Text (default: 244)
		let s:base1       = "245"	" Content - Statusleiste
		let s:base2       = "187"	" Background Tone Light
		let s:base3       = "230"	" Background Tone Light
		let s:yellow      = "178"	" default: 136
		let s:orange      = "166"	" default: 166
		let s:red         = "124"	" default: 124
		let s:magenta     = "125"	" default: 125
		let s:violet      = "61"	" default: 61
		let s:blue        = "33"	" default: 33
		let s:cyan        = "37"	" default: 37
		let s:green       = "71"	" default: 64
    
		let s:back        = "NONE"
    else
    
    	let s:base03      = "230"	" Background Tone
		let s:base02      = "187"	" Background Tone - Seitenleiste (Zeilennummern)
		let s:base01      = "242"	" Content - Zeilennummern und Kommentare (default: 239)
		let s:base00      = "246"	" Content 
		
		let s:base0       = "237"	" Content - Text (default: 244)
		let s:base1       = "236"	" Content - 
		let s:base2       = "234"	" Background Tone Light
		let s:base3       = "232"	" Background Tone Light
		
		let s:yellow      = "136"	" default: 136
		let s:orange      = "130"	" default: 166
		let s:red         = "88"	" default: 124
		let s:magenta     = "125"	" default: 125
		let s:violet      = "54"	" default: 61
		let s:blue        = "19"	" default: 33
		let s:cyan        = "25"	" default: 37
		let s:green       = "28"	" default: 64
		
		let s:back        = s:base02
    
    endif
    
elseif g:solarized_termcolors != 256 && &t_Co >= 16
    let s:vmode       = "cterm"
    let s:base03      = "8"
    let s:base02      = "0"
    let s:base01      = "10"
    let s:base00      = "11"
    let s:base0       = "12"
    let s:base1       = "14"
    let s:base2       = "7"
    let s:base3       = "15"
    let s:yellow      = "3"
    let s:orange      = "9"
    let s:red         = "1"
    let s:magenta     = "5"
    let s:violet      = "13"
    let s:blue        = "4"
    let s:cyan        = "6"
    let s:green       = "2"
    
else	" 8 colors
    let s:base03      = "DarkGray"      " 0*
    let s:base02      = "Black"         " 0
    let s:base01      = "LightGreen"    " 2*
    let s:base00      = "LightYellow"   " 3*
    let s:base0       = "LightBlue"     " 4*
    let s:base1       = "LightCyan"     " 6*
    let s:base2       = "LightGray"     " 7
    let s:base3       = "White"         " 7*
    let s:yellow      = "DarkYellow"    " 3
    let s:orange      = "LightRed"      " 1*
    let s:red         = "DarkRed"       " 1
    let s:magenta     = "DarkMagenta"   " 5
    let s:violet      = "LightMagenta"  " 5*
    let s:blue        = "DarkBlue"      " 4
    let s:cyan        = "DarkCyan"      " 6
    let s:green       = "DarkGreen"     " 2

endif



"}}}


" Overrides dependent on user specified values and environment "{{{
" ---------------------------------------------------------------------


"let s:b           = ""
let s:b           = ",bold"

"let s:u           = ""
let s:u           = ",underline"

"let s:i           = ""
let s:i           = ",italic"


let s:none            = "NONE"
let s:t_none          = "NONE"
let s:n               = "NONE"
let s:c               = ",undercurl"
let s:r               = ",reverse"
let s:s               = ",standout"
let s:ou              = ""
let s:ob              = ""
"}}}






" Highlighting primitives"{{{
" ---------------------------------------------------------------------

exe "let s:bg_none      = ' ".s:vmode."bg=".s:none   ."'"
exe "let s:bg_back      = ' ".s:vmode."bg=".s:back   ."'"
exe "let s:bg_base03    = ' ".s:vmode."bg=".s:base03 ."'"
exe "let s:bg_base02    = ' ".s:vmode."bg=".s:base02 ."'"
exe "let s:bg_base01    = ' ".s:vmode."bg=".s:base01 ."'"
exe "let s:bg_base00    = ' ".s:vmode."bg=".s:base00 ."'"
exe "let s:bg_base0     = ' ".s:vmode."bg=".s:base0  ."'"
exe "let s:bg_base1     = ' ".s:vmode."bg=".s:base1  ."'"
exe "let s:bg_base2     = ' ".s:vmode."bg=".s:base2  ."'"
exe "let s:bg_base3     = ' ".s:vmode."bg=".s:base3  ."'"
exe "let s:bg_green     = ' ".s:vmode."bg=".s:green  ."'"
exe "let s:bg_yellow    = ' ".s:vmode."bg=".s:yellow ."'"
exe "let s:bg_orange    = ' ".s:vmode."bg=".s:orange ."'"
exe "let s:bg_red       = ' ".s:vmode."bg=".s:red    ."'"
exe "let s:bg_magenta   = ' ".s:vmode."bg=".s:magenta."'"
exe "let s:bg_violet    = ' ".s:vmode."bg=".s:violet ."'"
exe "let s:bg_blue      = ' ".s:vmode."bg=".s:blue   ."'"
exe "let s:bg_cyan      = ' ".s:vmode."bg=".s:cyan   ."'"

exe "let s:fg_none      = ' ".s:vmode."fg=".s:none   ."'"
exe "let s:fg_back      = ' ".s:vmode."fg=".s:back   ."'"
exe "let s:fg_base03    = ' ".s:vmode."fg=".s:base03 ."'"
exe "let s:fg_base02    = ' ".s:vmode."fg=".s:base02 ."'"
exe "let s:fg_base01    = ' ".s:vmode."fg=".s:base01 ."'"
exe "let s:fg_base00    = ' ".s:vmode."fg=".s:base00 ."'"
exe "let s:fg_base0     = ' ".s:vmode."fg=".s:base0  ."'"
exe "let s:fg_base1     = ' ".s:vmode."fg=".s:base1  ."'"
exe "let s:fg_base2     = ' ".s:vmode."fg=".s:base2  ."'"
exe "let s:fg_base3     = ' ".s:vmode."fg=".s:base3  ."'"
exe "let s:fg_green     = ' ".s:vmode."fg=".s:green  ."'"
exe "let s:fg_yellow    = ' ".s:vmode."fg=".s:yellow ."'"
exe "let s:fg_orange    = ' ".s:vmode."fg=".s:orange ."'"
exe "let s:fg_red       = ' ".s:vmode."fg=".s:red    ."'"
exe "let s:fg_magenta   = ' ".s:vmode."fg=".s:magenta."'"
exe "let s:fg_violet    = ' ".s:vmode."fg=".s:violet ."'"
exe "let s:fg_blue      = ' ".s:vmode."fg=".s:blue   ."'"
exe "let s:fg_cyan      = ' ".s:vmode."fg=".s:cyan   ."'"

exe "let s:fmt_none     = ' ".s:vmode."=NONE".          " term=NONE".    "'"
exe "let s:fmt_bold     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_bldi     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_undr     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_undb     = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_uopt     = ' ".s:vmode."=NONE".s:ou.     " term=NONE".s:ou."'"
exe "let s:fmt_curl     = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c."'"
exe "let s:fmt_ital     = ' ".s:vmode."=NONE".s:i.      " term=NONE".s:i."'"
exe "let s:fmt_stnd     = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s."'"
exe "let s:fmt_revr     = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r."'"
exe "let s:fmt_revb     = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"




" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" exe compiled formats

	exe "hi! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_back

	exe "hi! Comment"        .s:fmt_ital   .s:fg_base01 .s:bg_none
	"       *Comment         any comment

	exe "hi! Constant"       .s:fmt_none   .s:fg_cyan   .s:bg_none
	"       *Constant        any constant
	"        String          a string constant: "this is a string"
	"        Character       a character constant: 'c', '\n'
	"        Number          a number constant: 234, 0xff
	"        Boolean         a boolean constant: TRUE, false
	"        Float           a floating point constant: 2.3e10

	exe "hi! Identifier"     .s:fmt_none   .s:fg_blue   .s:bg_none
	"       *Identifier      any variable name
	"        Function        function name (also: methods for classes)
	"
	exe "hi! Statement"      .s:fmt_none   .s:fg_green  .s:bg_none
	"       *Statement       any statement
	"        Conditional     if, then, else, endif, switch, etc.
	"        Repeat          for, do, while, etc.
	"        Label           case, default, etc.
	"        Operator        "sizeof", "+", "*", etc.
	"        Keyword         any other keyword
	"        Exception       try, catch, throw

	exe "hi! PreProc"        .s:fmt_none   .s:fg_orange .s:bg_none
	"       *PreProc         generic Preprocessor
	"        Include         preprocessor #include
	"        Define          preprocessor #define
	"        Macro           same as Define
	"        PreCondit       preprocessor #if, #else, #endif, etc.

	exe "hi! Type"           .s:fmt_none   .s:fg_yellow .s:bg_none
	"       *Type            int, long, char, etc.
	"        StorageClass    static, register, volatile, etc.
	"        Structure       struct, union, enum, etc.
	"        Typedef         A typedef

	exe "hi! Special"        .s:fmt_none   .s:fg_red    .s:bg_none
	"       *Special         any special symbol
	"        SpecialChar     special character in a constant
	"        Tag             you can use CTRL-] on this
	"        Delimiter       character that needs attention
	"        SpecialComment  special things inside a comment
	"        Debug           debugging statements

	exe "hi! Underlined"     .s:fmt_none   .s:fg_violet .s:bg_none
	"       *Underlined      text that stands out, HTML links

	exe "hi! Ignore"         .s:fmt_none   .s:fg_none   .s:bg_none
	"       *Ignore          left blank, hidden  |hl-Ignore|

	exe "hi! Error"          .s:fmt_bold   .s:fg_red    .s:bg_base02
	"       *Error           any erroneous construct

	exe "hi! Todo"           .s:fmt_bold   .s:fg_magenta.s:bg_none
	"       *Todo            anything that needs extra attention; mostly the
	"                        keywords TODO FIXME and XXX
	"
"}}}
" Extended highlighting "{{{
" ---------------------------------------------------------------------
	exe "hi! SpecialKey" 	 .s:fmt_bold   .s:fg_base00 .s:bg_none
	exe "hi! NonText"    	 .s:fmt_bold   .s:fg_base00 .s:bg_none
	exe "hi! StatusLine"     .s:fmt_none   .s:fg_base1  .s:bg_base02  .s:fmt_revr
	exe "hi! StatusLineNC"   .s:fmt_none   .s:fg_base00 .s:bg_base02  .s:fmt_revr
	exe "hi! Visual"         .s:fmt_none   .s:fg_base01 .s:bg_base03  .s:fmt_revr
	exe "hi! Directory"      .s:fmt_none   .s:fg_blue   .s:bg_none
	exe "hi! ErrorMsg"       .s:fmt_revr   .s:fg_red    .s:bg_none
	exe "hi! IncSearch"      .s:fmt_stnd   .s:fg_orange .s:bg_none
	exe "hi! Search"         .s:fmt_revr   .s:fg_yellow .s:bg_none
	exe "hi! MoreMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
	exe "hi! ModeMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
	exe "hi! Question"       .s:fmt_bold   .s:fg_cyan   .s:bg_none
	exe "hi! VertSplit"      .s:fmt_none   .s:fg_base00 .s:bg_base00
	exe "hi! Title"          .s:fmt_bold   .s:fg_orange .s:bg_none
	exe "hi! VisualNOS"      .s:fmt_stnd   .s:fg_none   .s:bg_base02  .s:fmt_revr
	exe "hi! WarningMsg"     .s:fmt_bold   .s:fg_red    .s:bg_none
	exe "hi! WildMenu"       .s:fmt_none   .s:fg_base2  .s:bg_base02
	exe "hi! Folded"         .s:fmt_undb   .s:fg_base0  .s:bg_base02
	exe "hi! FoldColumn"     .s:fmt_none   .s:fg_base0  .s:bg_base02
	exe "hi! DiffAdd"        .s:fmt_none   .s:fg_green  .s:bg_base02
	exe "hi! DiffChange"     .s:fmt_none   .s:fg_yellow .s:bg_base02
	exe "hi! DiffDelete"     .s:fmt_none   .s:fg_red    .s:bg_base02
	exe "hi! DiffText"       .s:fmt_none   .s:fg_blue   .s:bg_base02
	exe "hi! SignColumn"     .s:fmt_none   .s:fg_base0  .s:bg_base02
	exe "hi! Conceal"        .s:fmt_none   .s:fg_blue   .s:bg_none
	exe "hi! SpellBad"       .s:fmt_curl   .s:fg_none   .s:bg_none
	exe "hi! SpellCap"       .s:fmt_curl   .s:fg_none   .s:bg_none
	exe "hi! SpellRare"      .s:fmt_curl   .s:fg_none   .s:bg_none
	exe "hi! SpellLocal"     .s:fmt_curl   .s:fg_none   .s:bg_none
	exe "hi! Pmenu"          .s:fmt_none   .s:fg_base0  .s:bg_base02
	exe "hi! PmenuSel"       .s:fmt_none   .s:fg_base01 .s:bg_base2
	exe "hi! PmenuSbar"      .s:fmt_none   .s:fg_base2  .s:bg_base0
	exe "hi! PmenuThumb"     .s:fmt_none   .s:fg_base0  .s:bg_base03
	exe "hi! TabLine"        .s:fmt_undr   .s:fg_base0  .s:bg_base02
	exe "hi! TabLineFill"    .s:fmt_undr   .s:fg_base0  .s:bg_base02
	exe "hi! TabLineSel"     .s:fmt_undr   .s:fg_base01 .s:bg_base2
	exe "hi! CursorColumn"   .s:fmt_none   .s:fg_none   .s:bg_base02
	exe "hi! CursorLine"     .s:fmt_uopt   .s:fg_none   .s:bg_base02
	exe "hi! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_base02
	exe "hi! LineNr"         .s:fmt_none   .s:fg_base01 .s:bg_base02
	exe "hi! CursorLineNr"   .s:fmt_bold   .s:fg_base2  .s:bg_base02
	exe "hi! Cursor"         .s:fmt_none   .s:fg_base03 .s:bg_base0
	hi! link lCursor Cursor
	exe "hi! MatchParen"     .s:fmt_bold   .s:fg_red    .s:bg_base01
"}}}




" vim syntax highlighting "{{{
" ---------------------------------------------------------------------
	"exe "hi! vimLineComment" . s:fg_base01 .s:bg_none   .s:fmt_ital
	"hi! link vimComment Comment
	"hi! link vimLineComment Comment
	hi! link vimVar Identifier
	hi! link vimFunc Function
	hi! link vimUserFunc Function
	hi! link helpSpecial Special
	hi! link vimSet Normal
	hi! link vimSetEqual Normal
	exe "hi! vimCommentString"  .s:fmt_none    .s:fg_violet .s:bg_none
	exe "hi! vimCommand"        .s:fmt_none    .s:fg_yellow .s:bg_none
	exe "hi! vimCmdSep"         .s:fmt_bold    .s:fg_blue   .s:bg_none
	exe "hi! helpExample"       .s:fmt_none    .s:fg_base1  .s:bg_none
	exe "hi! helpOption"        .s:fmt_none    .s:fg_cyan   .s:bg_none
	exe "hi! helpNote"          .s:fmt_none    .s:fg_magenta.s:bg_none
	exe "hi! helpVim"           .s:fmt_none    .s:fg_magenta.s:bg_none
	exe "hi! helpHyperTextJump" .s:fmt_undr    .s:fg_blue   .s:bg_none
	exe "hi! helpHyperTextEntry".s:fmt_none    .s:fg_green  .s:bg_none
	exe "hi! vimIsCommand"      .s:fmt_none    .s:fg_base00 .s:bg_none
	exe "hi! vimSynMtchOpt"     .s:fmt_none    .s:fg_yellow .s:bg_none
	exe "hi! vimSynType"        .s:fmt_none    .s:fg_cyan   .s:bg_none
	exe "hi! vimHiLink"         .s:fmt_none    .s:fg_blue   .s:bg_none
	exe "hi! vimHiGroup"        .s:fmt_none    .s:fg_blue   .s:bg_none
	exe "hi! vimGroup"          .s:fmt_undb    .s:fg_blue   .s:bg_none
"}}}


" diff highlighting "{{{
" ---------------------------------------------------------------------
hi! link diffAdded Statement
hi! link diffLine Identifier
"}}}


" git & gitcommit highlighting "{{{
"git
	"exe "hi! gitDateHeader"
	"exe "hi! gitIdentityHeader"
	"exe "hi! gitIdentityKeyword"
	"exe "hi! gitNotesHeader"
	"exe "hi! gitReflogHeader"
	"exe "hi! gitKeyword"
	"exe "hi! gitIdentity"
	"exe "hi! gitEmailDelimiter"
	"exe "hi! gitEmail"
	"exe "hi! gitDate"
	"exe "hi! gitMode"
	"exe "hi! gitHashAbbrev"
	"exe "hi! gitHash"
	"exe "hi! gitReflogMiddle"
	"exe "hi! gitReference"
	"exe "hi! gitStage"
	"exe "hi! gitType"
	"exe "hi! gitDiffAdded"
	"exe "hi! gitDiffRemoved"
	"gitcommit
	"exe "hi! gitcommitSummary"      
	exe "hi! gitcommitComment"      .s:fmt_ital     .s:fg_base01    .s:bg_none
	hi! link gitcommitUntracked gitcommitComment
	hi! link gitcommitDiscarded gitcommitComment
	hi! link gitcommitSelected  gitcommitComment
	exe "hi! gitcommitUnmerged"     .s:fmt_bold     .s:fg_green     .s:bg_none
	exe "hi! gitcommitOnBranch"     .s:fmt_bold     .s:fg_base01    .s:bg_none
	exe "hi! gitcommitBranch"       .s:fmt_bold     .s:fg_magenta   .s:bg_none
	hi! link gitcommitNoBranch gitcommitBranch
	exe "hi! gitcommitDiscardedType".s:fmt_none     .s:fg_red       .s:bg_none
	exe "hi! gitcommitSelectedType" .s:fmt_none     .s:fg_green     .s:bg_none
	"exe "hi! gitcommitUnmergedType"
	"exe "hi! gitcommitType"
	"exe "hi! gitcommitNoChanges"
	"exe "hi! gitcommitHeader"
	exe "hi! gitcommitHeader"       .s:fmt_none     .s:fg_base01    .s:bg_none
	exe "hi! gitcommitUntrackedFile".s:fmt_bold     .s:fg_cyan      .s:bg_none
	exe "hi! gitcommitDiscardedFile".s:fmt_bold     .s:fg_red       .s:bg_none
	exe "hi! gitcommitSelectedFile" .s:fmt_bold     .s:fg_green     .s:bg_none
	exe "hi! gitcommitUnmergedFile" .s:fmt_bold     .s:fg_yellow    .s:bg_none
	exe "hi! gitcommitFile"         .s:fmt_bold     .s:fg_base0     .s:bg_none
	hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
	hi! link gitcommitSelectedArrow  gitcommitSelectedFile
	hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile
	"exe "hi! gitcommitArrow"
	"exe "hi! gitcommitOverflow"
	"exe "hi! gitcommitBlank"
" }}}
" html highlighting "{{{
" ---------------------------------------------------------------------
	exe "hi! htmlTag"           .s:fmt_none .s:fg_base01 .s:bg_none
	exe "hi! htmlEndTag"        .s:fmt_none .s:fg_base01 .s:bg_none
	exe "hi! htmlTagN"          .s:fmt_bold .s:fg_base1  .s:bg_none
	exe "hi! htmlTagName"       .s:fmt_bold .s:fg_blue   .s:bg_none
	exe "hi! htmlSpecialTagName".s:fmt_ital .s:fg_blue   .s:bg_none
	exe "hi! htmlArg"           .s:fmt_none .s:fg_base00 .s:bg_none
	exe "hi! javaScript"        .s:fmt_none .s:fg_yellow .s:bg_none
"}}}
" perl highlighting "{{{
" ---------------------------------------------------------------------
	exe "hi! perlHereDoc"    . s:fg_base1  .s:bg_back   .s:fmt_none
	exe "hi! perlVarPlain"   . s:fg_yellow .s:bg_back   .s:fmt_none
	exe "hi! perlStatementFileDesc". s:fg_cyan.s:bg_back.s:fmt_none
"}}}
" tex highlighting "{{{
" ---------------------------------------------------------------------
	exe "hi! texStatement"   . s:fg_cyan   .s:bg_back   .s:fmt_none
	exe "hi! texMathZoneX"   . s:fg_yellow .s:bg_back   .s:fmt_none
	exe "hi! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none
	exe "hi! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none
	exe "hi! texRefLabel"    . s:fg_yellow .s:bg_back   .s:fmt_none
"}}}

" CtrlP highlighting "{{{
" ---------------------------------------------------------------------
"	"hi link CtrlPLinePre Type
"	"exe "hi! CtrlPPrtCursor"   . s:fg_base1  .s:bg_yellow
"}}}
