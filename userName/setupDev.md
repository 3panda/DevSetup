
# Python

## HomewbrewにPython3
```
brew install python3
```

## Pyhon管理

### virtualenv
version2.7以前を扱う場合

```
pip install virtualenv
# 仮想環境myenvを作成
cd (仮想環境を作りたいプロジェクト)
# インストール済みのpythonのバージョンを指定して環境構築
virtualenv myenv --python=/usr/bin/python2.7
# 仮想環境myenvを有効化する
source myenv/bin/activate

# 成功
(myenv) $ 

# 作成したばかりの時点では、仮想環境はクリーンな状態
# pip freezeすると、最低限のパッケージしかインストールされていないことを確認
(myenv) $ pip freeze
appdirs==1.4.3
packaging==16.8
pyparsing==2.2.0
six==1.10.0

# 仮想環境の無効化
(myenv) $ deactivate

# 仮想環境の削除
# プロジェクト直下に生成されたフォルダごと削除
rm -rf myenv/

```

[参考:virtualenv 基本的なコマンド使い方メモ](https://qiita.com/th1209/items/84f21a4499548b34ec91)

### venv
version3.0以上は内蔵のvenv
※python3.0以上がインストールが前提

```
# 新しい環境の作成 myenvを作成
python3 -m venv myenv

# 仮想環境の有効化
. myenv/bin/activate

# python の実行・バージョン確認
(myenv)$ python -V

# モジュールのインストール
(myenv)$ pip install [module name]

# モジュールの確認
(myenv)$ pip freeze
[module name1]==x.x.x
[module name2]==x.x.x

# 仮想環境の無効化
(myenv)$ deactivate 

# 仮想環境の削除
# プロジェクト直下に生成されたフォルダごと削除でOK
rm -rf myenv/

```

[参考](https://docs.python.jp/3/library/venv.html)

## flake8
pep8のチェック、pyflakesのチェック、及び循環的複雑度をチェックできるラッパー
```
pip3 install flake8
```

## pylint
数ファイルにまたがったモジュールやパッケージをチェックできる
```
pip3 install pylint
```


# NeoVim
※NeoVimのインストール、pipの対応、プラグイン管理のdeinのインストールまで
```
brew install neovim/neovim/neovim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh ~/.local/share/  ※deinのインストールする先
pip3 install neovim
nvim
```

## CheckHealth
Neovimには自己判断ツール
動作がおかしい時はまずこれを確認
```
:CheckHealth
```
アラートの内容に従い問題を解決する
以下を求められる事がある

## deinの更新
```
:call dein#update()
```

## プラグインの更新後
```
:UpdateRemotePlugins
```

### 其の他参考
deoplete.nvimが効かなくなった時の手元できる対処法
https://muunyblue.github.io/a3ce63a7a8521c37a513db67129855a8.html

### Neovimのターミナル機能から親のNeoVimを起動
https://github.com/mhinz/neovim-remote/blob/master/INSTALLATION.md


## Visual Studio Code
[Vim - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)

[Python - Visual Studio Marketplace
](https://marketplace.visualstudio.com/items?itemName=ms-python.python)

