# Rails演習
## Rails基礎0
###  【応用】Webアプリケーションとデスクトップアプリケーションの違いを記述せよ
#### Webアプリケーション
主にブラウザ上で動作し、そのコンポーネントやデータベースなどがクライアントPCではなく外部サーバーに存在するアプリケーションのこと。
#### デスクトップアプリケーション
ローカル上で動作し、コンポーネントがクライアントPCに存在するアプリケーションのこと。

###  Railsにおける哲学、DRYとCoCはどのような意味か、それを重視することで何が得られるか
#### DRY
Don't Repeat Yourselfの略語。
同じことは繰り返さない、というRailsの理念。
#### CoC
Convention over Configurationの略語。
設定よりも規約を重視せよ、というRailsの理念。
個人、ないしは少人数の間での決定を廃し、規約に従った実装をすることで、決定までの時間や中途参入者の敷居を下げることができる。

## Rails基礎1
### gemとは何か
rubyで使用することのできる、追加モジュール。
必要な機能を自分で作るのではなく、gemによって実装することで、工数の低減につなげることができる。

### 【応用】どうすればgemを作成し、公開することができるか
`bundle gem`でgemを作成できる。
rubygemsのアカウントを作成して、rubygemsへgemをリリースすることで、公開することができる。

###  【応用】すべてのgemは信用できるものであるか、そうでなければどの点でgemの使用を判断するべきか
全てのgemが信用できるとは限らない。作者やスター数、フォーク数から判断すべきである。

###  【応用】PostgreSQLとMySQLはどのような違いがあるか
||MySQL|PostgreSQL|
|:---|:---|:---|
|Website|https://www.mysql.com/|https://www.postgresql.org/|
|開発元|Oracle|PostgreSQL Global Development Group|
|初回リリース|1995|1989|
|販売価格|オープンソースでフリー（無償）と商用（有償）のデュアルライセンス|オープンソースで完全なフリー（無償）ソフトウエア|
|アーキテクト|マルチスレッド|マルチプロセス|
|日本語対応|Shift-JIS、UTF-8、cp932、EUC-JP|UTF-8、EUC-JP|

###  【応用】他にもよく使用されるNoSQLとはどのようなものか
RDBMSはSQL言語への変換をして、最終的にSQL言語で命令が渡されるが、NoSQLはSQL言語を使わない。
表形式ではなくより単純なデータ格納形式をとるため高速である。

###  【応用】`rails new`コマンドを実行する際、テストの作成をスキップするコマンドは何か
```bash
rails new --skip-test
```

###  【応用】テキストでは紹介されなかった主なRailsアプリケーションにおけるフォルダ・ファイルについて調べてみましょう。
#### binフォルダ
バイナリ実行可能ファイルが格納されるディレクトリ
#### tmpフォルダ
キャッシュなど、一時ファイルを格納するディレクトリ

###  【応用】アプリを起動する際に、rails sコマンドを使用し、サーバーを起動させたが、なぜサーバーを起動する必要があるか
Railsアプリケーションはサーバー上で動作するアプリケーションであるため、リクエストを受けるためのサーバーが必要である。

## Rails基礎2
###  【応用】MVC以外のデザインパターンを調べてみましょう。
#### MVVM
Model View View Model
#### MMVC
Model, ApplicationModel, View, Controller
#### DCI
Model with Data, Role, Context
#### MDV
Model, Data View
#### いずれもMVCモデルの派生形であることに変わりはないが、Modelが十分な機能を提供しており、Controllerの責務が不要、もしくは別のものになっている。

## Rails基礎3
### generateコマンドで作成したものを削除するコマンドは何か
`rails destroy`コマンド

### generateコマンドで作成するのと、ひとつずつファイル作成やフォルダ作成するのはどちらが良いか
generateコマンドのほうがいい。
規約に従っている限り、関連付けの設定まで行ってくれるからである。

### 【応用】よく使用されるgenerateコマンドとして、scaffoldがある、このコマンドが何を行うか調べよ
全部作ってくれる。
> コントローラ、ビュー、モデル、マイグレーション、アセット、ルート、テスト、ヘルパー

### 【応用】Railsの命名規則同様、メソッドや変数の命名にも気をつけなければならない、メソッドや変数はどのような観点から命名すべきか調べよ。
[参照](https://qiita.com/gakkie/items/3afcd505c786364aa5fa)


### GETメソッドで、/hogeというリクエストが来た際、fugaコントローラーのfugafugaアクションを呼び出すルーティングを記述せよ
```rb
Rails.application.routes.draw do
  get '/hoge', to: 'fuga#fugafuga'
end
```

## Rails基礎4
### 下記のようなコントローラーがあり、そのコントローラーのeditアクションが実行された場合、どのようなビューが呼び出されるか
```rb
class BlogsController < ApplicationController
  def edit
  end
end
```
`app/views/blogs/edit.html.erb`を呼び出します。
Railsはコントローラ名とメソッド名からrenderメソッドを記載しなくても自動的にレンダリングするビューを特定します。
`app/views/コントローラ名/メソッド名.html.erb`を呼び出します。

## Rails基礎5
### 【応用】O/Rマッピングとはなにか
RDBレコードをオブジェクトとして扱えるように変換している。
プログラマはSQLを意識することなくコーディングできる。

### 実際に自分でdatabase.ymlの設定をすることになった場合、どのようなドキュメントを読めばよいか


## Rails基礎6
### 【応用】sudoコマンドが出てきたが、どのようなコマンドか
root権限で実行する
> sudoは，指定したユーザーでコマンドを実行する。
> デフォルトではroot権限で実行する。

### 【応用】serviceコマンドが出てきたが、どのようなコマンドか
存在するserviceに対し、起動、停止や再起動などオペレーションを行う。

### 【応用】データベースを作成するコマンドは`rails db:create`だが、削除するコマンドは何か
```rb
rails db:drop
```

## Rails基礎7
### カラム名を変更したい場合、マイグレーションファイル名はどのような名前にするべきか、今回はblogsテーブルのtitleカラムをnameカラムに変更したい。
```rb
rails generate migration rename_title_column_to_blogs
```

## Rails基礎8
### 【応用】マイグレーションをすべてやり直すコマンドを調べよ
```rb
rake db:migrate:reset
```

## Rails基礎9
### 【応用】カラム名を変更したい場合、マイグレーションファイルにどのように記述すればよいか、今回はblogsテーブルのtitleカラムをnameカラムに変更したい。

```rb
class RenameTitleColumnToBlogs < ActiveRecord::Migration
  def change
    rename_column :blogs, :title, :name
  end
end
```

## Rails基礎10
### `schema.rb`を見て、テーブルの状態を確認するは、SQLを使用してテーブルの状態を確認する場合とくらべてどのようなメリットがあるか
> スキーマファイルは、Active Recordのオブジェクトにどのような属性があるのかを概観するのに便利です。
> スキーマ情報は多くのマイグレーションに分かれて存在しており、
> そのままでは非常に探しにくいですが、スキーマファイルにコンパクトにまとまっています。

### 【応用】実は、schema.rbの役割はテーブルの状態を確認するだけではない、schema.rbが他にどのような役割を担っているか調べよ
```
rake db:schema:dump
```
`db:migrate`、`db:rollback` などが依存している。
現在のスキーマからschema.rbを作成する。
```
rake db:schema:load
```
`db:setup`、`db:reset` などが依存している。
schema.rbからテーブルを作成する。
