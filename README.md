# README
●アプリケーション名：Reviework

●アプリケーション概要
・ユーザー登録
・レビューページ作成
・レビュー投稿
・レビュー投稿に対する返信（リプライ）
・DMによる他ユーザーとのコミュニケーション
・他ユーザーのブロック（非表示）
・他ユーザーの通報（管理者へのアカウントBAN依頼）

●URL	デプロイ済みのURLを記述。デプロイが済んでいない場合は、デプロイが完了次第記述すること。
追加

●テスト用アカウント	ログイン機能等を実装した場合は、ログインに必要な情報を記述。またBasic認証等を設けている場合は、そのID/Passも記述すること。

●利用方法	このアプリケーションの利用方法を記述。

●目指した課題解決	このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記述。

●洗い出した要件	スプレッドシートにまとめた要件定義を記述。

●実装した機能についての画像やGIFおよびその説明	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFは
GyazoGIFで撮影すること。
実装予定の機能	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。

●データベース設計	ER図等を添付。

●ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）


# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| birthday           | string | null: false |

### Association

<!-- - has_many :room_users -->
<!-- - has_many :pages, through: :room_users -->
has_one :review
has_one :page



## pages テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| title  | string     | null: false                    |

### Association

<!-- - has_many :room_users -->
<!-- - has_many :users, through: :room_users -->
- has_many :reviews


## reviews テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| page    | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |
| comment | string     |                                |


### Association

- belongs_to :page
- belongs_to :user

## replys テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| review  | references | null: false, foreign_key: true |
| rep     | string     |                                |

### Association
- belongs_to :user



## crys テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| review | references | null: false, foreign_key: true |


### Association
- belongs_to :user

## cools テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| review | references | null: false, foreign_key: true |


### Association
- belongs_to :user

## cutes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| review | references | null: false, foreign_key: true |


### Association
- belongs_to :user

## scareds テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| review | references | null: false, foreign_key: true |


### Association
- belongs_to :user

## healings テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| review | references | null: false, foreign_key: true |


### Association
- belongs_to :user

## funs テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| review | references | null: false, foreign_key: true |


### Association
- belongs_to :user

## interestings テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| review | references | null: false, foreign_key: true |


### Association
- belongs_to :user

## thought_provokings テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| review | references | null: false, foreign_key: true |


### Association
- belongs_to :user

## dm_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| dm     | references | null: false, foreign_key: true |


### Association
- belongs_to :user

## dms テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| dm_message  | string     | null: false                    |


### Association
- belongs_to :user

## bans テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| ban_user  | string     | null: false                    |


### Association
- belongs_to :user

## blocks テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| user_block  | string     | null: false                    |


### Association
- belongs_to :user