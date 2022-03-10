# bodo

https://bodo-apps.github.io/bodo/docs/hello/

## Flutter で カジノアプリを作るサンプル

こんにちは、アプリの開発スタッフです  
このページをご覧いただきありがとうございます 😃

- こちらのソースは無許可で自由に改変、使用していただけます
- 構成のアイデアにしたり、Flutterの練習に使ってください
- そのまま自分用のアプリとしてリリースしてもOKです
- 分からないことがあれば、気軽に質問をしてください 😃

## メインで開発している人の Twitter

- ルビードッグ(@Rubydog725)
  https://twitter.com/Rubydog725

## 使い方

### 1. Chrome でアプリを動かす

```
$ flutter run -d chrome
```

### 2. iOS, Android など接続された全てのプラットフォームで動かす

事前にそれぞれの起動が必要です

```
$ flutter run -d all
```

<br>

## 開発メモ

- データクラスの生成(freezed)

```
$ flutter pub run build_runner build --delete-conflicting-outputs
```

- アプリアイコンの生成 (flutter_launcher_icons)

```
$ flutter pub run flutter_launcher_icons:main
```

- ネイティブのスプラッシュ画面を生成 (flutter_native_splash)

```
$ flutter pub run flutter_native_splash:create
```

- ドキュメントの更新

https://github.com/bodo-apps/bodo/blob/main/docs_edit/README.md
