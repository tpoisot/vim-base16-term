# vim-base16-term

A color scheme for `vim` in the terminal, with fixes of various things that bugged me in the original `base16`

## Summary of changes

- The signs and line numbers columns have the same background as text
- The current lign number is highlighted and bold
- The `0A` color is fixed from `Brown` to `Yellow`
- The color of matching parens is (in my opinion) less confusing
- Saner highlighting (mental sanity wise) for pandoc

## Pre-requisites

base16 colors for [shell] and [Xresources]

[shell]: https://github.com/chriskempson/base16-shell
[Xresources]: https://github.com/chriskempson/base16-xresources

## Installation

```{vim}
Bundle "chriskempson/base16-vim"
Bundle "tpoisot/vim-base16-term"
```

## Usage

```{vim}
colorscheme base16
```
