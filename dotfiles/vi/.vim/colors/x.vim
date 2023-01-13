set background=dark
highlight clear

if version > 580
	if exists("g:syntax_on")
		syntax reset
	endif
endif

let g:colors_name="x"

"hi WhiteSpace term=NONE cterm=NONE ctermfg=NONE ctermbg=1
"match WhiteSpace '\s\+$'

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
hi  Identifier        ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Function          ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  PreProc           ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Type              ctermfg=NONE  ctermbg=NONE  cterm=NONE

hi  EndofBuffer       ctermfg=8     ctermbg=NONE  cterm=NONE
hi  Folded            ctermfg=8     ctermbg=NONE  cterm=NONE
hi  FoldColumn        ctermfg=8     ctermbg=NONE  cterm=NONE

hi  LineNr            ctermfg=8     ctermbg=NONE  cterm=NONE
hi  CursorLineNr      ctermfg=8     ctermbg=NONE  cterm=NONE

hi  ColorColumn       ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  CursorColumn      ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  CursorLine        ctermfg=NONE  ctermbg=NONE  cterm=NONE

hi  DiffAdd           ctermfg=0     ctermbg=10    cterm=NONE
hi  DiffDelete        ctermfg=0     ctermbg=9     cterm=NONE
hi  DiffChange        ctermfg=0     ctermbg=8     cterm=NONE
hi  DiffText          ctermfg=0     ctermbg=11    cterm=NONE

hi  DiffAdd           ctermfg=0     ctermbg=2     cterm=NONE
hi  DiffDelete        ctermfg=0     ctermbg=1     cterm=NONE
hi  DiffChange        ctermfg=0     ctermbg=8     cterm=NONE
hi  DiffText          ctermfg=0     ctermbg=6     cterm=NONE

hi! link diffAdded    DiffAdd
hi! link diffChanged  DiffChange
hi! link diffRemoved  DiffDelete

hi  Error             ctermfg=15    ctermbg=1     cterm=NONE
hi  MatchParen        ctermfg=NONE  ctermbg=NONE  cterm=bold

hi  IncSearch         ctermfg=11    ctermbg=NONE  cterm=reverse
hi  Searchlight       ctermfg=11    ctermbg=NONE  cterm=reverse
hi  Search            ctermfg=15    ctermbg=8     cterm=NONE

hi  IncSearch         ctermfg=15    ctermbg=2     cterm=NONE
hi  Searchlight       ctermfg=15    ctermbg=2     cterm=NONE
hi  Search            ctermfg=15    ctermbg=5     cterm=NONE
hi  Visual            ctermfg=NONE  ctermbg=4     cterm=NONE

hi  SpellBad          ctermfg=9     ctermbg=NONE  cterm=underline
hi  SpellLocal        ctermfg=14    ctermbg=NONE  cterm=underline
hi  SpellRare         ctermfg=13    ctermbg=NONE  cterm=underline
hi  SpellCap          ctermfg=NONE  ctermbg=NONE  cterm=NONE

hi  Pmenu             ctermfg=15    ctermbg=8     cterm=NONE
hi  PmenuSel          ctermfg=NONE  ctermbg=NONE  cterm=reverse
hi  PmenuSbar         ctermfg=NONE  ctermbg=8     cterm=NONE
hi  PmenuThumb        ctermfg=NONE  ctermbg=NONE  cterm=reverse

hi  TabLine           ctermfg=NONE  ctermbg=NONE  cterm=reverse
hi  TabLineSel        ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  TabLineFill       ctermfg=8     ctermbg=NONE  cterm=reverse
hi  VertSplit         ctermfg=8     ctermbg=NONE  cterm=NONE
hi  StatusLine        ctermfg=NONE  ctermbg=NONE  cterm=reverse
hi  StatusLineTerm    ctermfg=NONE  ctermbg=NONE  cterm=reverse
hi  StatusLineNC      ctermfg=0     ctermbg=8     cterm=NONE
hi  StatusLineTermNC  ctermfg=0     ctermbg=8     cterm=NONE

hi  ModeMsg           ctermfg=NONE  ctermbg=NONE  cterm=NONE
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

hi  cError                   ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  cErrInBracket            ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  cErrInParen              ctermfg=NONE  ctermbg=NONE  cterm=NONE

hi! link cCommentStartError  Comment
hi! link cWrongComTail       Comment

hi! link Title               Normal
hi! link VimHiGroup          VimGroup

hi! link htmlLink                 __NONE
hi! link htmlBold                 __NONE
hi! link htmlBoldItalic           __NONE
hi! link htmlBoldUnderline        __NONE
hi! link htmlBoldItalicUnderline  __NONE
hi! link htmlBoldUnderlineItalic  __NONE
hi! link htmlUnderlineBold        __NONE
hi! link htmlUnderlineItalicBold  __NONE
hi! link htmlUnderlineBoldItalic  __NONE
hi! link htmlItalic               __NONE
hi! link htmlItalicBold           __NONE
hi! link htmlItalicBoldUnderline  __NONE
hi! link htmlItalicUnderlineBold  __NONE

hi! link markdownH1Delimiter __NONE
hi! link markdownH1 __NONE
hi! link markdownH2Delimiter __NONE
hi! link markdownH2 __NONE
hi! link markdownH3Delimiter __NONE
hi! link markdownH3 __NONE
hi! link markdownH4Delimiter __NONE
hi! link markdownH4 __NONE
hi! link markdownH5Delimiter __NONE
hi! link markdownH5 __NONE
hi! link markdownH6Delimiter __NONE
hi! link markdownH6 __NONE

hi! link markdownBold                 __NONE
hi! link markdownBoldDelimiter        __NONE
hi! link markdownItalic               __NONE
hi! link markdownItalicDelimiter      __NONE
hi! link markdownBoldItalic           __NONE
hi! link markdownBoldItalicDelimiter  __NONE

hi! link markdownAutomaticLink __NONE
hi! link markdownBlockquote __NONE
hi! link markdownCodeBlock __NONE
hi! link markdownCodeDelimiter __NONE
hi! link markdownCode __NONE
hi! link markdownError __NONE
hi! link markdownEscape __NONE
hi! link markdownFootnoteDefinition __NONE
hi! link markdownFootnote __NONE
hi! link markdownHeadingDelimiter __NONE
hi! link markdownHeadingRule __NONE
hi! link markdownIdDeclaration __NONE
hi! link markdownIdDelimiter __NONE
hi! link markdownId __NONE
hi! link markdownItalicDelimiter __NONE
hi! link markdownItalic __NONE
hi! link markdownLineBreak __NONE
hi! link markdownLineStart __NONE
hi! link markdownLinkDelimiter __NONE
hi! link markdownLink __NONE
hi! link markdownLinkTextDelimiter __NONE
hi! link markdownLinkText __NONE
hi! link markdownListMarker __NONE
hi! link markdownOrderedListMarker __NONE
hi! link markdownRule __NONE
hi! link markdownStrikeDelimiter __NONE
hi! link markdownStrike __NONE
hi! link markdownUrlDelimiter  __NONE
hi! link markdownUrl __NONE
hi! link markdownUrlTitleDelimiter __NONE
hi! link markdownUrlTitle __NONE
hi! link markdownValid __NONE
hi! link markdownYamlHead __NONE

"hi! link vim9Comment __NONE
"hi! link vim9LineComment __NONE
"hi! link vimAbb __NONE
"hi! link vimAddress __NONE
"hi! link vimAugroupError __NONE
"hi! link vimAugroupKey __NONE
"hi! link vimAugroup __NONE
"hi! link vimAugroupSyncA __NONE
"hi! link vimAuHighlight __NONE
"hi! link vimAuSyntax __NONE
"hi! link vimAutoCmdMod __NONE
"hi! link vimAutoCmd __NONE
"hi! link vimAutoCmdOpt __NONE
"hi! link vimAutoCmdSfxList __NONE
"hi! link vimAutoCmdSpace __NONE
"hi! link vimAutoEventList __NONE
"hi! link vimAutoEvent __NONE
"hi! link vimAutoSet __NONE
"hi! link vimBehaveError __NONE
"hi! link vimBehaveModel __NONE
"hi! link vimBehave __NONE
"hi! link vimBracket __NONE
"hi! link vimBufnrWarn __NONE
"hi! link vimClusterName __NONE
"hi! link vimCmdSep __NONE
"hi! link vimCmplxRepeat __NONE
"hi! link vimCollClassErr __NONE
"hi! link vimCollClass __NONE
"hi! link vimCollection __NONE
"hi! link vimComFilter __NONE
"hi! link vimCommand __NONE
"hi! link vimComment __NONE
"hi! link vimCommentString __NONE
"hi! link vimCommentTitleLeader __NONE
"hi! link vimCommentTitle __NONE
"hi! link vimCondHL __NONE
"hi! link vimContinue __NONE
"hi! link vimCtrlChar __NONE
"hi! link vimEchoHL __NONE
"hi! link vimEchoHLNone __NONE
"hi! link vimEcho __NONE
"hi! link vimElseIfErr __NONE
"hi! link vimElseif __NONE
"hi! link vimEmbedError __NONE
"hi! link vimEnvvar __NONE
"hi! link vimError __NONE
"hi! link vimErrSetting __NONE
"hi! link vimEscapeBrace __NONE
"hi! link vimEscape __NONE
"hi! link vimExecute __NONE
"hi! link vimExtCmd __NONE
"hi! link vimFBVar __NONE
"hi! link vimFgBgAttrib __NONE
"hi! link vimFiletype __NONE
"hi! link vimFilter __NONE
"hi! link vimFold __NONE
"hi! link vimFTCmd __NONE
"hi! link vimFTError __NONE
"hi! link vimFTOption __NONE
"hi! link vimFuncBlank __NONE
"hi! link vimFuncBody __NONE
"hi! link vimFuncEcho __NONE
"hi! link vimFuncKey __NONE
"hi! link vimFuncName __NONE
"hi! link vimFunc __NONE
"hi! link vimFuncSID __NONE
"hi! link vimFunctionError __NONE
"hi! link vimFunction __NONE
"hi! link vimFuncVar __NONE
"hi! link vimGlobal __NONE
"hi! link vimGroupAdd __NONE
"hi! link vimGroupList __NONE
"hi! link vimGroupName __NONE
"hi! link vimGroup __NONE
"hi! link vimGroupRem __NONE
"hi! link vimGroupSpecial __NONE
"hi! link vimHiAttribList __NONE
"hi! link vimHiAttrib __NONE
"hi! link vimHiBang __NONE
"hi! link vimHiCtermColor __NONE
"hi! link vimHiCtermError __NONE
"hi! link vimHiCtermFgBg __NONE
"hi! link vimHiCTerm __NONE
"hi! link vimHiCtermul __NONE
"hi! link vimHiFontname __NONE
"hi! link vimHighlight __NONE
"hi! link vimHiGroup __NONE
"hi! link vimHiGuiFgBg __NONE
"hi! link vimHiGuiFontname __NONE
"hi! link vimHiGuiFont __NONE
"hi! link vimHiGui __NONE
"hi! link vimHiGuiRgb __NONE
"hi! link vimHiKeyError __NONE
"hi! link vimHiKeyList __NONE
"hi! link vimHiLink __NONE
"hi! link vimHiNmbr __NONE
"hi! link vimHi __NONE
"hi! link vimHiStartStop __NONE
"hi! link vimHiTermcap __NONE
"hi! link vimHiTerm __NONE
"hi! link vimHLGroup __NONE
"hi! link vimHLMod __NONE
"hi! link vimInsert __NONE
"hi! link vimIsCommand __NONE
"hi! link vimIskList __NONE
"hi! link vimIskSep __NONE
"hi! link vimKeyCodeError __NONE
"hi! link vimKeyCode __NONE
"hi! link vimKeyword __NONE
"hi! link vimLetHereDoc __NONE
"hi! link vimLetHereDocStart __NONE
"hi! link vimLetHereDocStop __NONE
"hi! link vimLet __NONE
"hi! link vimLineComment __NONE
"hi! link vimLuaRegion __NONE
"hi! link vimMapBang __NONE
"hi! link vimMapLhs __NONE
"hi! link vimMapModErr __NONE
"hi! link vimMapModKey __NONE
"hi! link vimMapMod __NONE
"hi! link vimMap __NONE
"hi! link vimMapRhsExtend __NONE
"hi! link vimMapRhs __NONE
"hi! link vimMark __NONE
"hi! link vimMarkNumber __NONE
"hi! link vimMenuBang __NONE
"hi! link vimMenuMap __NONE
"hi! link vimMenuMod __NONE
"hi! link vimMenuNameMore __NONE
"hi! link vimMenuName __NONE
"hi! link vimMenuPriority __NONE
"hi! link vimMenuRhs __NONE
"hi! link vimMtchComment __NONE
"hi! link vimNormCmds __NONE
"hi! link vimNorm __NONE
"hi! link vimNotation __NONE
"hi! link vimNotFunc __NONE
"hi! link vimNotPatSep __NONE
"hi! link vimNumber __NONE
"hi! link vimOperError __NONE
"hi! link vimOper __NONE
"hi! link vimOperParen __NONE
"hi! link vimoperStar __NONE
"hi! link vimOption __NONE
"hi! link vimParenSep __NONE
"hi! link vimPatRegion __NONE
"hi! link vimPatSepErr __NONE
"hi! link vimPatSep __NONE
"hi! link vimPatSepR __NONE
"hi! link vimPatSepZ __NONE
"hi! link vimPatSepZone __NONE
"hi! link vimPattern __NONE
"hi! link vimPlainMark __NONE
"hi! link vimPlainRegister __NONE
"hi! link vimPythonRegion __NONE
"hi! link vimRange __NONE
"hi! link vimRegion __NONE
"hi! link vimRegister __NONE
"hi! link vimScriptDelim __NONE
"hi! link vimSearchDelim __NONE
"hi! link vimSearch __NONE
"hi! link vimSep __NONE
"hi! link vimSetEqual __NONE
"hi! link vimSetMod __NONE
"hi! link vimSet __NONE
"hi! link vimSetSep __NONE
"hi! link vimSetString __NONE
"hi! link vimSpecFileMod __NONE
"hi! link vimSpecFile __NONE
"hi! link vimSpecial __NONE
"hi! link vimStatement __NONE
"hi! link vimStdPlugin __NONE
"hi! link vimStringCont __NONE
"hi! link vimStringEnd __NONE
"hi! link vimString __NONE
"hi! link vimSubst1 __NONE
"hi! link vimSubst2 __NONE
"hi! link vimSubstDelim __NONE
"hi! link vimSubstFlagErr __NONE
"hi! link vimSubstFlags __NONE
"hi! link vimSubst __NONE
"hi! link vimSubstPat __NONE
"hi! link vimSubstRange __NONE
"hi! link vimSubstRep4 __NONE
"hi! link vimSubstRep __NONE
"hi! link vimSubstSubstr __NONE
"hi! link vimSubstTwoBS __NONE
"hi! link vimSynCaseError __NONE
"hi! link vimSynCase __NONE
"hi! link vimSyncC __NONE
"hi! link vimSyncError __NONE
"hi! link vimSyncGroupName __NONE
"hi! link vimSyncGroup __NONE
"hi! link vimSyncKey __NONE
"hi! link vimSyncLinebreak __NONE
"hi! link vimSyncLinecont __NONE
"hi! link vimSyncLines __NONE
"hi! link vimSyncMatch __NONE
"hi! link vimSyncNone __NONE
"hi! link vimSynContains __NONE
"hi! link vimSyncRegion __NONE
"hi! link vimSynError __NONE
"hi! link vimSynKeyContainedin __NONE
"hi! link vimSynKeyOpt __NONE
"hi! link vimSynKeyRegion __NONE
"hi! link vimSynLine __NONE
"hi! link vimSynMatchRegion __NONE
"hi! link vimSynMtchCchar __NONE
"hi! link vimSynMtchGroup __NONE
"hi! link vimSynMtchGrp __NONE
"hi! link vimSynMtchOpt __NONE
"hi! link vimSynNextgroup __NONE
"hi! link vimSynNotPatRange __NONE
"hi! link vimSynOption __NONE
"hi! link vimSynPatMod __NONE
"hi! link vimSynPatRange __NONE
"hi! link vimSynRegion __NONE
"hi! link vimSynReg __NONE
"hi! link vimSynRegOpt __NONE
"hi! link vimSynRegPat __NONE
"hi! link vimSyntax __NONE
"hi! link vimSynType __NONE
"hi! link vimTodo __NONE
"hi! link vimType __NONE
"hi! link vimUnmap __NONE
"hi! link vimUserAttrbCmpltFunc __NONE
"hi! link vimUserAttrbCmplt __NONE
"hi! link vimUserAttrbError __NONE
"hi! link vimUserAttrbKey __NONE
"hi! link vimUserAttrb __NONE
"hi! link vimUserCmdError __NONE
"hi! link vimUserCmd __NONE
"hi! link vimUserCommand __NONE
"hi! link vimUserFunc __NONE
"hi! link vimUsrCmd __NONE
"hi! link vimVar __NONE
"hi! link vimWarn __NONE
