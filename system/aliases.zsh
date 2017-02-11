# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -FG"
  alias l="gls -lahG"
  alias ll="gls -lG"
  alias la='gls -aG'
fi
