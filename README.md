# README

## 対応OS

UBUNTU16.04/18.04

## install手順

* dockerコンテナ内で行う際はGUI周りのpackage等のinstall項目を取り除く必要がある

1. install.shの実行

```sh
./dotfiles/install.sh
```

1. default shellの変更

```
chsh -s `which zsh` $USER
```

## 注意

.XModmapは適用する際は内容を確認してからにしてください。
