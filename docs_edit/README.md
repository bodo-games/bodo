https://bodo-apps.github.io/bodo/docs/hello

<img src="test.png">

# Hugo をインストール (e.g. macOS brew)

```
$ brew install hugo
```

# 新しい記事を書くとき

```
$ hugo new xxx/xxx.md
```

---
title: "ここにタイトル"
date: 2020-00-00T00:00:00+09:00
draft: false
tags:
  - ここにタグ
  - ここにタグ
comments: false
showMeta: true
showActions: false
---

# ローカルで動かしてみる

```
$ hugo server --ignoreCache --verbose --disableFastRender
```

# ビルド

docs フォルダを削除する

```
$ hugo
```

docs フォルダが生成される

# 開発チームのアイコン

- themes/hugo-tranquilpeak-theme/static/images/team.png
