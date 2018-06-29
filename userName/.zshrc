#$PATH 
export PATH=/usr/local/bin/zsh:$PATH

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# NEOVIM用
# export XDG_CONFIG_HOME="$HOME/.config"
## init.vimのXDG_CONFIG_HOMEの設定があれば不要

# nodebrew
export PATH=$PATH:$HOME/.nodebrew/current/bin

# 重複パスを登録しない
typeset -U path cdpath fpath manpath

# sudo用のpathを設定
typeset -xT SUDO_PATH sudo_path
typeset -U sudo_path
sudo_path=({/usr/local,/usr,}/sbin(N-/))

# pathを設定
path=(~/bin(N-/) /usr/local/bin(N-/) ${path})

## 環境変数に "typeset -U" を設定 これにより登録済みのパスを追加しないようになる
## "source" コマンドなどで設定を再読み込みしたり、子シェルを起動した場合に何度も同じpathが登録されてしまう問題を解決
## path内の各パスの後ろについている "(N-/)" は、存在しないディレクトリは登録しないという設定

# Diff Color
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi


#alias
