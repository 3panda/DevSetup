

# 直接インストールするアプリ
- Google Chorme
- karabiner-elements

## Google Chorme
特に特別な設定は無し

## karabiner-elements
https://github.com/wwwjfy/Karabiner-Elements/releases

### 英数/かな の切り替え設定
1. Karabiner-Elementsを開き「complex_modifications」タブを選択1 「Add Rule」
1.  開いたWebページに「For Japanese（日本語環境向けの設定）」 Import
1. 「英数/かな」の切り替え設定がルールに追加されるので設定
1. escでを押した時に英数キーも飛ばす設定も指定

## CotEditor
サブエディターとして使う。特に特別な設定はしない。

## VSCode
作業用エディター2
必要なplug-inをインストールするだけで便利に使える。

## その他

### システム環境設定の共有で名前を変更する
以下の様なローマ字の部分を修正
```
hogehogen-no-mac$
```
### 不可視ファイルの表示
```
$ defaults write com.apple.finder AppleShowAllFiles TRUE
```

# Homebrew
パッケージ管理に利用する

## インストール
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
XcodeComndLineToolも入る

## インストールするパッケージ
1. zsh
1. git
1. neovim
1. python3

### パッケージのインストール
ex)git
```
brew install git
```

## Zsh
BashからZshに変更する
### インストール
```
brew install zsh --without-etcdir
```
###バージョン確認
```
$ /usr/local/bin/zsh --version
zsh 5.4.2 (x86_64-apple-darwin17.4.0)
```

### インストールされたZshのPath確認
brewでインストールされたZshのPath確認
```
$ which zsh
/usr/local/bin/zsh
```

### ログインシェルをzshに変更
brewでインストールされたパスを追加
```
$ sudo vi /etc/shells

/bin/bash/bin/bash
 /bin/csh
 /bin/ksh
 /bin/sh
 /bin/tcsh
 /bin/zsh
/usr/local/bin/zsh←追加

```

### デフォルトのShellを変更
※ターミナルの環境設定でも可能
```
$ chsh
```

```
# Changing user information for XXXX.
# Use "passwd" to change the password.
##
# Open Directory: /Local/Default
##
Shell: /bin/bash ←変更
Full Name: XXXX
Office Location:
Office Phone:
Home Phone:

```
ターミナル（Terminal.app）を再起動後に以下で確認
```
echo $SHELL
```

## Git
Gitの設定

### Vim用の設定を記述
.gitignore_globalに自分用の指定を記述。
Project毎の設定に影響を及ぼさない。

### gitignore_globalの指定を有効にする
.gitconfigに.gitignore_globalを読むこむように設定
```
$ git config --global core.excludesfile ~/.gitignore_global
```

## Neovim
Vimの新バージョン

### インストール
```
brew install neovim/neovim/neovim
```
※詳細は[setupDev.md](./setupDev.md)にて記載




