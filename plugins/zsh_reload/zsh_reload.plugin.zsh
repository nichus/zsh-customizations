# reload zshrc
function src()
{
  local cache=$ZSH_CACHE_DIR
  autoload -U compinit zrecompile
  compinit -u -d "$cache/zcomp-$HOST"

  local zshrc=${ZDOTDIR:-~}/.zshrc

  for f in $zshrc "$cache/zcomp-$HOST"; do
    zrecompile -p $f && command rm -f $f.zwc.old
  done

  source $zshrc
}
