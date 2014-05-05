" base16term
" Adapted from
" Base16 Default (https://github.com/chriskempson/base16)
" Scheme: Chris Kempson (http://chriskempson.com)

" Terminal color definitions
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "10"
  let s:cterm02 = "11"
  let s:cterm04 = "12"
  let s:cterm06 = "13"
  let s:cterm09 = "09"
  let s:cterm0F = "14"
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16"

" Highlighting function
fun <sid>hi(group, ctermfg, ctermbg, attr)
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Return terminal color for light/dark variants
fun s:cterm(color)
  if &background == "dark"
    return a:color
  endif

  if a:color == s:cterm00
    return s:cterm07
  elseif a:color == s:cterm01
    return s:cterm06
  elseif a:color == s:cterm02
    return s:cterm05
  elseif a:color == s:cterm03
    return s:cterm04
  elseif a:color == s:cterm04
    return s:cterm03
  elseif a:color == s:cterm05
    return s:cterm02
  elseif a:color == s:cterm06
    return s:cterm01
  elseif a:color == s:cterm07
    return s:cterm00
  endif

  return a:color
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "bold")
call <sid>hi("Debug",         s:cterm08, "", "")
call <sid>hi("Directory",     s:cterm0D, "", "")
call <sid>hi("ErrorMsg",      s:cterm08, s:cterm00, "")
call <sid>hi("Exception",     s:cterm08, "", "")
call <sid>hi("FoldColumn",    "", s:cterm01, "")
call <sid>hi("Folded",        s:cterm03, s:cterm01, "")
call <sid>hi("IncSearch",     s:cterm01, s:cterm0A, "none")
call <sid>hi("Italic",        "", "", "none")
call <sid>hi("Macro",         s:cterm08, "", "")
call <sid>hi("MatchParen",    s:cterm05, s:cterm00,  "")
call <sid>hi("ModeMsg",       s:cterm0B, "", "")
call <sid>hi("MoreMsg",       s:cterm0B, "", "")
call <sid>hi("Question",      s:cterm0A, "", "")
call <sid>hi("Search",        s:cterm01, s:cterm0A,  "")
call <sid>hi("SpecialKey",    s:cterm03, "", "")
call <sid>hi("TooLong",       s:cterm08, "", "")
call <sid>hi("Underlined",    s:cterm08, "", "")
call <sid>hi("Visual",        "", s:cterm02, "")
call <sid>hi("VisualNOS",     s:cterm08, "", "")
call <sid>hi("WarningMsg",    s:cterm08, "", "")
call <sid>hi("WildMenu",      s:cterm08, "", "")
call <sid>hi("Title",         s:cterm0D, "", "none")
call <sid>hi("Conceal",       s:cterm09, s:cterm00, "bold")
call <sid>hi("Cursor",        s:cterm00, s:cterm05, "")
call <sid>hi("NonText",       s:cterm03, "", "")
call <sid>hi("Normal",        s:cterm05, s:cterm00, "")
call <sid>hi("LineNr",        s:cterm03, "", "")
call <sid>hi("SignColumn",    s:cterm05, s:cterm00, "")
call <sid>hi("SpecialKey",    s:cterm03, "", "")
call <sid>hi("StatusLine",    s:cterm04, s:cterm02, "none")
call <sid>hi("StatusLineNC",  s:cterm03, s:cterm01, "none")
call <sid>hi("VertSplit",     s:cterm02, s:cterm02, "none")
call <sid>hi("ColorColumn",   "", "", "none")
call <sid>hi("CursorColumn",  "", s:cterm01, "none")
call <sid>hi("CursorLine",    "", "", "none")
call <sid>hi("CursorLineNr",  s:cterm05, "", "bold")
call <sid>hi("PMenu",         s:cterm04, s:cterm01, "none")
call <sid>hi("PMenuSel",      s:cterm01, s:cterm04, "")
call <sid>hi("TabLine",       s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineFill",   s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineSel",    s:cterm0B, s:cterm01, "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:cterm09, "", "")
call <sid>hi("Character",    s:cterm08, "", "")
call <sid>hi("Comment",      s:cterm03, "", "")
call <sid>hi("Conditional",  s:cterm0E, "", "")
call <sid>hi("Constant",     s:cterm09, "", "")
call <sid>hi("Define",       s:cterm0E, "", "none")
call <sid>hi("Delimiter",    s:cterm0F, "", "")
call <sid>hi("Float",        s:cterm09, "", "")
call <sid>hi("Function",     s:cterm0D, "", "")
call <sid>hi("Identifier",   s:cterm08, "", "none")
call <sid>hi("Include",      s:cterm0D, "", "")
call <sid>hi("Keyword",      s:cterm0E, "", "")
call <sid>hi("Label",        s:cterm0A, "", "")
call <sid>hi("Number",       s:cterm09, "", "")
call <sid>hi("Operator",     s:cterm0E, "", "none")
call <sid>hi("PreProc",      s:cterm0A, "", "")
call <sid>hi("Repeat",       s:cterm0A, "", "")
call <sid>hi("Special",      s:cterm0C, "", "")
call <sid>hi("SpecialChar",  s:cterm0F, "", "")
call <sid>hi("Statement",    s:cterm08, "", "")
call <sid>hi("StorageClass", s:cterm0A, "", "")
call <sid>hi("String",       s:cterm0B, "", "")
call <sid>hi("Structure",    s:cterm0E, "", "")
call <sid>hi("Tag",          s:cterm0A, "", "")
call <sid>hi("Todo",         s:cterm0A, s:cterm01, "")
call <sid>hi("Type",         s:cterm09, "", "none")
call <sid>hi("Typedef",      s:cterm0A, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     s:cterm08, s:cterm00, "undercurl")
call <sid>hi("SpellLocal",   s:cterm09, s:cterm00, "undercurl")
call <sid>hi("SpellCap",     s:cterm0E, s:cterm00, "undercurl")
call <sid>hi("SpellRare",    s:cterm08, s:cterm00, "undercurl")

" Additional diff highlighting
call <sid>hi("DiffAdd",      s:cterm0B, s:cterm01, "bold")
call <sid>hi("DiffChange",   s:cterm05, s:cterm01, "")
call <sid>hi("DiffDelete",   s:cterm08, s:cterm01, "")
call <sid>hi("DiffText",     s:cterm0D, s:cterm01, "")
call <sid>hi("DiffAdded",    s:cterm0B, s:cterm00, "")
call <sid>hi("DiffFile",     s:cterm08, s:cterm00, "")
call <sid>hi("DiffNewFile",  s:cterm0B, s:cterm00, "")
call <sid>hi("DiffLine",     s:cterm05, s:cterm00, "")
call <sid>hi("DiffRemoved",  s:cterm08, s:cterm00, "")

" HTML highlighting
call <sid>hi("htmlBold",    s:cterm0A, "", "")
call <sid>hi("htmlItalic",  s:cterm0E, "", "")
call <sid>hi("htmlEndTag",  s:cterm05, "", "")
call <sid>hi("htmlTag",     s:cterm05, "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:cterm05, "", "")
call <sid>hi("cssClassName",   s:cterm0E, "", "")
call <sid>hi("cssColor",       s:cterm0C, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:cterm05, "", "")
call <sid>hi("javaScriptBraces",  s:cterm05, "", "")
call <sid>hi("javaScriptNumber",  s:cterm09, "", "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:cterm08, "", "")
call <sid>hi("gitCommitSummary",   s:cterm0D, "", "bold")
call <sid>hi("gitcommitblank",     s:cterm0F, "", "")
call <sid>hi("gitcommitHeader",    s:cterm0B, "", "bold")
  
" Signify highlighting
call <sid>hi("SignifySignAdd",     s:cterm0B, "", "")
call <sid>hi("SignifySignChange",  s:cterm0A, "", "")
call <sid>hi("SignifySignDelete",  s:cterm08, "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:cterm0D, "", "")
call <sid>hi("NERDTreeExecFile",  s:cterm05, "", "")

" vim-pandoc highlighting
call <sid>hi("pandocBlockQuote",                     s:cterm0B, "", "")
call <sid>hi("pandocDelimitedCodeBlock",             s:cterm04, "", "")
call <sid>hi("pandocPCite",                          s:cterm0B, "", "")
call <sid>hi("pandocPCiteAnchor",                    s:cterm0D, "", "")
call <sid>hi("pandocTitleBlockTitle",                s:cterm0D, "", "bold")
call <sid>hi("pandocTitleBlock",                     s:cterm07, "", "bold")
call <sid>hi("pandocTitleBlockMark",                 s:cterm09, "", "bold")
call <sid>hi("AtxStart",                             s:cterm09, "", "bold")
call <sid>hi("pandocAtxHeader",                      s:cterm0D, "", "bold")
call <sid>hi("pandocSetexHeader",                    s:cterm0D, "", "bold")
call <sid>hi("pandocReferenceLabel",                 s:cterm0E, "", "")
call <sid>hi("pandocReferenceDefinitionLabel",       s:cterm0C, "", "")
call <sid>hi("pandocDefinitionBlockTerm",            s:cterm06, "", "bold")
call <sid>hi("pandocDefinitionBlock",                s:cterm04, "", "")
call <sid>hi("pandocNewLine",                        "", s:cterm01, "")

" LaTeX
call <sid>hi("texBeginEndName",       s:cterm0B, "", "")
call <sid>hi("texBeginEndModifier",   s:cterm0D, "", "")
call <sid>hi("texStatement",          s:cterm0E, "", "")

" julia
call <sid>hi("juliaBlKeyword",          s:cterm0D, "", "")

" xdefaults
call <sid>hi("xdefaultsLabel",          s:cterm0E, "", "")
call <sid>hi("xdefaultsValue",          s:cterm0D, "", "")

" sh
call <sid>hi("shStatement",          s:cterm0E, "", "")
call <sid>hi("shSetList",          s:cterm0D, "", "")

" Remove functions
delf <sid>hi
delf <sid>cterm

" Remove color variables
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
