formulas=(
  brotli
  c-ares
  ca-certificates
  deno
  gdbm
  icu4c
  lazygit
  libevent
  libnghttp2
  libuv
  mpdecimal
  ncurses
  nodebrew
  openssl@1.1
  python@3.9
  readline
  sqlite
  starship
  tmux
  utf8proc
  xz
)

echo "brew install formula"
for formula in "${formulas[@]}"; do
  brew install $formula || brew upgrade $formula
done

casks=(
  alfred
  biscuit
  brave-browser
  clipy
  deepl
  discord
  drawio
  font-hack-nerd-font
  google-chrome
  gyazo
  iterm2
  kap
  notion
  postman
  rectangle
  skitch
  skype
  slack
  tickeys
  visual-studio-code
  xmind
  zoom
)

echo "brew casks"
for cask in "${casks[@]}"; do
  brew install --cask $cask
done