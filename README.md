- [1. このプロジェクトについて](#1-このプロジェクトについて)
  - [1.1. Railsプロジェクト作成＆削除](#11-railsプロジェクト作成削除)
  - [1.2. DB設定ファイル編集](#12-db設定ファイル編集)
  - [1.3. コンテナ立ち上げ](#13-コンテナ立ち上げ)
  - [1.4. すべてのコンテナとボリュームを削除](#14-すべてのコンテナとボリュームを削除)


# 1. このプロジェクトについて

RubyフレームワークのRailsを自前のDocker Composeで使用するためのテンプレ用プロジェクトです。

※ このプロジェクトでは、あえて`.gitignore`にて`/src`ディレクトリを捕捉しないよう設定しています。（必要に応じて指定を削除してください）

## 1.1. Railsプロジェクト作成＆削除

Railsプロジェクト（srcフォルダ）を作成します。

```sh
cd script/init/
./create_src.sh
```

Railsプロジェクト（srcフォルダ）を削除したい場合にのみ実行します。

```sh
cd script/init/
./remove_src.sh
```

## 1.2. DB設定ファイル編集

Railsプロジェクトを作成した後、`/src/config/database.yml`を編集します。

```sh
# default: &defaultの以下のパラメータを設定します
  username: root
  password: password
  host: db_mysql
```

## 1.3. コンテナ立ち上げ

コンテナビルド

```sh
cd script
./build.sh
```

コンテナ立ち上げ

```sh
docker compose up
```

## 1.4. すべてのコンテナとボリュームを削除

```sh
cd script
./down_clear.sh
```
