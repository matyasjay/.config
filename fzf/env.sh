export FZF_DEFAULT_OPTS="
  --tmux 
  --height 90%
  --layout reverse
  --style full
  --border
  --padding 1,2
  --border-label ' Search ' --input-label ' Input ' --header-label ' File Type '
  --preview 'fzf-preview.sh {}'

  --bind 'result:transform-list-label:
      if [[ -z $FZF_QUERY ]]; then
        echo \" $FZF_MATCH_COUNT items \"
      else
        echo \" $FZF_MATCH_COUNT matches for [$FZF_QUERY] \"
      fi
      '
  --bind 'focus:transform-preview-label:[[ -n {} ]] && printf \" Previewing [%s] \" {}'
  --bind 'focus:+transform-header:file --brief {} || echo \"No file selected\"'
  --bind 'ctrl-r:change-list-label( \"Reloading the list\" )+reload(sleep 2; git ls-files)'

  --color 'border:#3A3F45,label:#E6E9EF'
  --color 'preview-border:#3A3F45,preview-label:#7DCFFF'
  --color 'list-border:#3A3F45,list-label:#8CC4FF'
  --color 'input-border:#3A3F45,input-label:#7DCFFF'
  --color 'header-border:#3A3F45,header-label:#8CC4FF'

  --color fg:#E6E9EF,bg:#0C0E10,hl:#7DCFFF
  --color fg+:#E6E9EF,bg+:#151A1F,hl+:#C9B3FF
  --color info:#5C6268,prompt:#7DCFFF,pointer:#8CC4FF
  --color marker:#C9B3FF,spinner:#7DCFFF,header:#8CC4FF
"

export FZF_TMUX=1

export FZF_TMUX_OPTS="-p 90%,90%"
