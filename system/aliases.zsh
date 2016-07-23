# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color=auto"
  alias l="gls -lah --color=auto"
  alias ll="gls -l --color=auto"
  alias la='gls -a --color=auto'
fi
