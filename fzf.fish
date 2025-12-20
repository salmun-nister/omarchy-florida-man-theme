set -l color00 '#303446'
set -l color01 '#e78284'
set -l color02 '#a6d189'
set -l color03 '#e5c890'
set -l color04 '#8caaee'
set -l color05 '#ca9ee6'
set -l color06 '#81c8be'
set -l color07 '#c6d0f5'
set -l color08 '#51576d'
set -l color09 '#e78284'
set -l color0A '#a6d189'
set -l color0B '#e5c890'
set -l color0C '#8caaee'
set -l color0D '#ca9ee6'
set -l color0E '#81c8be'
set -l color0F '#b5bfe2'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
