set background=dark
highlight clear

if version > 580
	if exists("g:syntax_on")
		syntax reset
	endif
endif

let g:colors_name="x"

" ---

hi WhiteSpace ctermfg=NONE ctermbg=9 cterm=NONE
"match WhiteSpace '\s\+$'

" ---

hi  Normal            ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Bold              ctermfg=NONE  ctermbg=NONE  cterm=bold
hi  Link              ctermfg=14    ctermbg=NONE  cterm=NONE
hi  Underlined        ctermfg=NONE  ctermbg=NONE  cterm=underline

hi  Comment           ctermfg=9     ctermbg=NONE  cterm=NONE
hi  Todo              ctermfg=9     ctermbg=NONE  cterm=NONE
hi  Statement         ctermfg=11    ctermbg=NONE  cterm=NONE
hi  Constant          ctermfg=10    ctermbg=NONE  cterm=NONE
hi  String            ctermfg=10    ctermbg=NONE  cterm=NONE
hi  Special           ctermfg=10    ctermbg=NONE  cterm=NONE

hi  Comment           ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Todo              ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Statement         ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Constant          ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  String            ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Special           ctermfg=NONE  ctermbg=NONE  cterm=NONE

hi  Identifier        ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Function          ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  PreProc           ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Type              ctermfg=NONE  ctermbg=NONE  cterm=NONE

hi  LineNr            ctermfg=8     ctermbg=NONE  cterm=NONE
hi  CursorLineNr      ctermfg=8     ctermbg=NONE  cterm=NONE

hi  EndofBuffer       ctermfg=8     ctermbg=NONE  cterm=NONE
hi  Folded            ctermfg=8     ctermbg=NONE  cterm=NONE
hi  FoldColumn        ctermfg=8     ctermbg=NONE  cterm=NONE

hi  ColorColumn       ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  CursorColumn      ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  CursorLine        ctermfg=NONE  ctermbg=NONE  cterm=NONE

hi  DiffAdd           ctermfg=0     ctermbg=2     cterm=NONE
hi  DiffDelete        ctermfg=0     ctermbg=1     cterm=NONE
hi  DiffChange        ctermfg=0     ctermbg=8     cterm=NONE
hi  DiffText          ctermfg=0     ctermbg=6     cterm=NONE

hi  Error             ctermfg=15    ctermbg=1     cterm=NONE
hi  MatchParen        ctermfg=15    ctermbg=6     cterm=NONE
hi  Visual            ctermfg=NONE  ctermbg=4     cterm=NONE

hi  Search            ctermfg=15    ctermbg=5     cterm=NONE
hi  IncSearch         ctermfg=15    ctermbg=2     cterm=NONE
hi  Searchlight       ctermfg=15    ctermbg=2     cterm=NONE

hi  Pmenu             ctermfg=15    ctermbg=8     cterm=NONE
hi  PmenuSel          ctermfg=NONE  ctermbg=NONE  cterm=reverse
hi  PmenuSbar         ctermfg=NONE  ctermbg=8     cterm=NONE
hi  PmenuThumb        ctermfg=NONE  ctermbg=NONE  cterm=reverse

hi  StatusLine        ctermfg=NONE  ctermbg=NONE  cterm=reverse,bold
hi  StatusLineTerm    ctermfg=NONE  ctermbg=NONE  cterm=reverse,bold
hi  StatusLineNC      ctermfg=8     ctermbg=NONE  cterm=reverse
hi  StatusLineTermNC  ctermfg=8     ctermbg=NONE  cterm=reverse
hi  VertSplit         ctermfg=8     ctermbg=NONE  cterm=NONE

hi  Title             ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  TabLine           ctermfg=8     ctermbg=NONE  cterm=reverse
hi  TabLineSel        ctermfg=NONE  ctermbg=NONE  cterm=bold
hi  TabLineFill       ctermfg=8     ctermbg=NONE  cterm=reverse,underline

hi  SpellBad          ctermfg=9     ctermbg=NONE  cterm=underline
hi  SpellLocal        ctermfg=14    ctermbg=NONE  cterm=underline
hi  SpellRare         ctermfg=13    ctermbg=NONE  cterm=underline
hi  SpellCap          ctermfg=NONE  ctermbg=NONE  cterm=NONE

hi  ModeMsg           ctermfg=NONE  ctermbg=NONE  cterm=bold
hi  ErrorMsg          ctermfg=15    ctermbg=1     cterm=NONE
hi  MoreMsg           ctermfg=10    ctermbg=NONE  cterm=NONE
hi  Question          ctermfg=10    ctermbg=NONE  cterm=NONE
hi  WarningMsg        ctermfg=9     ctermbg=NONE  cterm=NONE

hi  SignColumn        ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Directory         ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  InactiveBuf       ctermfg=15    ctermbg=NONE  cterm=NONE
hi  Invisible         ctermfg=8     ctermbg=NONE  cterm=NONE
hi  NonText           ctermfg=8     ctermbg=NONE  cterm=NONE
hi  QuickFixLine      ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  SpecialKey        ctermfg=8     ctermbg=NONE  cterm=NONE

" ---

hi  cError            ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  cErrInBracket     ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  cErrInParen       ctermfg=NONE  ctermbg=NONE  cterm=NONE

hi! link diffAdded    DiffAdd
hi! link diffChanged  DiffChange
hi! link diffRemoved  DiffDelete

hi! link  cError              __NONE
hi! link  cErrInBracket       __NONE
hi! link  cErrInParen         __NONE

hi! link  cCommentStartError  Comment
hi! link  cWrongComTail       Comment

" ---

hi! link  htmlLink                 __NONE
hi! link  htmlBold                 __NONE
hi! link  htmlBoldItalic           __NONE
hi! link  htmlBoldUnderline        __NONE
hi! link  htmlBoldItalicUnderline  __NONE
hi! link  htmlBoldUnderlineItalic  __NONE
hi! link  htmlUnderlineBold        __NONE
hi! link  htmlUnderlineItalicBold  __NONE
hi! link  htmlUnderlineBoldItalic  __NONE
hi! link  htmlItalic               __NONE
hi! link  htmlItalicBold           __NONE
hi! link  htmlItalicBoldUnderline  __NONE
hi! link  htmlItalicUnderlineBold  __NONE

hi! link  markdownBold                 __NONE
hi! link  markdownBoldDelimiter        __NONE
hi! link  markdownItalic               __NONE
hi! link  markdownItalicDelimiter      __NONE
hi! link  markdownBoldItalic           __NONE
hi! link  markdownBoldItalicDelimiter  __NONE

hi! link  markdownH1Delimiter __NONE
hi! link  markdownH1 __NONE
hi! link  markdownH2Delimiter __NONE
hi! link  markdownH2 __NONE
hi! link  markdownH3Delimiter __NONE
hi! link  markdownH3 __NONE
hi! link  markdownH4Delimiter __NONE
hi! link  markdownH4 __NONE
hi! link  markdownH5Delimiter __NONE
hi! link  markdownH5 __NONE
hi! link  markdownH6Delimiter __NONE
hi! link  markdownH6 __NONE

hi! link  markdownAutomaticLink __NONE
hi! link  markdownBlockquote __NONE
hi! link  markdownCodeBlock __NONE
hi! link  markdownCodeDelimiter __NONE
hi! link  markdownCode __NONE
hi! link  markdownError __NONE
hi! link  markdownEscape __NONE
hi! link  markdownFootnoteDefinition __NONE
hi! link  markdownFootnote __NONE
hi! link  markdownHeadingDelimiter __NONE
hi! link  markdownHeadingRule __NONE
hi! link  markdownIdDeclaration __NONE
hi! link  markdownIdDelimiter __NONE
hi! link  markdownId __NONE
hi! link  markdownItalicDelimiter __NONE
hi! link  markdownItalic __NONE
hi! link  markdownLineBreak __NONE
hi! link  markdownLineStart __NONE
hi! link  markdownLinkDelimiter __NONE
hi! link  markdownLink __NONE
hi! link  markdownLinkTextDelimiter __NONE
hi! link  markdownLinkText __NONE
hi! link  markdownListMarker __NONE
hi! link  markdownOrderedListMarker __NONE
hi! link  markdownRule __NONE
hi! link  markdownStrikeDelimiter __NONE
hi! link  markdownStrike __NONE
hi! link  markdownUrlDelimiter  __NONE
hi! link  markdownUrl __NONE
hi! link  markdownUrlTitleDelimiter __NONE
hi! link  markdownUrlTitle __NONE
hi! link  markdownValid __NONE
hi! link  markdownYamlHead __NONE
