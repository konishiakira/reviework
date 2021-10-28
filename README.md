# README
●アプリケーション名：Reviework（レビュアーク）

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
（利用について）  
・TOPページに表示されている各作品のレビューページへ遷移できるボタンからレビューページを見ることができます。  
・誰でも閲覧可能ですが、「レビューしたい作品のレビューページの作成」「作品へのレビュー投稿」「レビューに対して返信」をしたい場合は、本アプリへのユーザー登録が必要となります。  
・新規ユーザー登録は、TOPにある「新規登録」ボタンから、登録ページに移り、必須項目を入力して登録ボタンを押下することで登録できます。  
・作品レビューページでは、「ユーザーの評価を集計した評価結果」が表示されております。作品に触れる際の参考にしていただければと思います。  
　
（注意事項について）  
・利用者は原則として著作権を侵害するような利用は控えていただくようお願いいたします。（詳しくはTOPページにある「本サイト利用における注意事項」をご参照ください）  
・レビューページにおける荒らし行為を行うユーザいた場合、アカウント停止の処置を取らせていただく場合がございます。  
・誹謗中傷などを行うユーザがいた場合、ブロック機能をご利用ください。  
　
●目指した課題解決	このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記述。  
・「今から何かの作品に触れようと考えている方が、作品のHPだけでは得られない「視聴者の感想」を、ネタバレ防止しつつを得る」課題の解決。また、「作品に触れた同年代のユーザー達がお互いの感想をアウトプットし、共感しあったり、他の考え方に気付いたりできる」課題の解決を目的としている。  
　
●洗い出した要件	スプレッドシートにまとめた要件定義を記述。  

①ユーザー管理機能  
（目的）  
  アプリ利用するユーザを管理するため  
（詳細）  
  Devise実装におけるユーザー管理の実装する  
（ストーリー(ユースケース)）  
  ログインページにて、ID,pass,Birthdayを記入して登録。下に投稿したレビューが一覧表示される。  

②レビューページ作成機能  
（目的）  
  レビューをしたい作品のレビューページを作成するため  
（詳細）  
  ルーム作成ボタンを押下し、レビューページを作成する  
（ストーリー(ユースケース)）  
  トップページにある「新規レビューページ作成ボタン」を押下し、作成  

③レビュー投稿機能  
（目的）  
  レビューを投稿するため  
（詳細）  
  レビューページのレビュー投稿ボタンを押下し、レビューを投稿する  
（ストーリー(ユースケース)）  
  トップ＞レビューページにて、「レビュー投稿ボタン」を押下し、内容を入力後作成。  

④レビュー削除機能  
（目的）  
  レビューを削除するため  
（詳細）  
  レビューページのレビュー削除ボタンを押下し、レビューを削除する  
（ストーリー(ユースケース)）  
  トップ＞レビューページにて、自身が投稿したレビューにある「レビューを削除ボタン」を押下し、削除  
  マイページの一覧表示されている、自身が投稿したレビューにある「レビューを削除ボタン」を押下し、削除  

⑤評価別アイコン投稿機能  
（目的）  
  他ユーザーが遷移した作品の評価を視覚的にイメージできるようにするため  
（詳細）  
  レビュー投稿する際に、用意されたアイコンを設定する（必須）  
  各レビューページのヘッダーに、レビュアー投稿したレビューにより集計した評価アイコンの数をパラメータ表示で上に出す。  
（ストーリー(ユースケース)）  
  トップ＞レビューページにて、自身が投稿したレビューにある「レビューを投稿ボタン」を押下し、投稿内容を入力する際に、用意された感情アイコンを設定する  

⑥年齢別レビューページ作成機能  
（目的）  
  年齢制限を設けたレビューページを作成するため  
（詳細）  
  登録ユーザーの生年月日情報から年齢を計算した値に該当するページを作成する（19-30,31-40,40-50)  
（ストーリー(ユースケース)）  
  トップページにある「新規レビューページ作成ボタン」を押下し、作成  

⑦リプライ機能  
（目的）  
  投稿されたレビューに対して、リプライができるようにするため  
（詳細）  
  投稿されたレビューには、ユーザーは一度しかリプライができない。但し、そのリプライに対してのリプライが投稿主から来た場合は、芋づる式で再度リプライが可能。（但し、その芋づる式のやりとりは、５回までしかできない）。６回目のリプライをしようとすると、「DMでのやりとりをお願いいたします」という案内を表示する。  
（ストーリー(ユースケース)）  
  トップ＞レビューページにて、他ユーザーが投稿したレビューにある「リプライアイコン」を押下し、返信することができる  

⑧DM機能  
（目的）  
  ユーザー同士でのコミュニケーションが行えるようにするため  
（詳細）  
  マイページにあるDMボタンから他ユーザーとのやりとりが可能になる。  
（ストーリー(ユースケース)）  
  マイページからDMボタンを押下し、対象のユーザーのセッションを定義して、コメントすることで、対象のユーザーをやりとりを行うことができる  

⑨ブロック機能  
（目的）  
  誹謗中傷や荒らし行為などを行うユーザに対して、非表示にしてブロックすることができるようにするため  
（詳細）  
  指定したユーザーの投稿を非表示する  
  非表示にしているユーザーはマイページで確認が可能であり、解除も可能。  
（ストーリー(ユースケース)）  
  トップ＞レビューページにて、他ユーザーを押下し、他ユーザーのマイページに遷移した際に、「ブロックするボタン」を押下することで、本サイト上に設定したユーザーの投稿は非表示になる  

⑩通報機能  
（目的）  
  荒らし行為などを行うユーザのアカウントをBANし、対象ユーザーが本サイトを利用できなくするため  
（詳細）  
  ユーザーが管理者に通報を行い、アカウントBANを行うことができる。その際に通報するユーザーが「証拠となる内容」をフォーマットに沿って送信する必要があり、確認した管理者が妥当だと判断した後、アカウントBANをする。  
（ストーリー(ユースケース)）  
  トップ＞レビューページにて、他ユーザーが、レビューのリプライにおいて、誹謗中傷などを行っている場合、そのユーザーのマイページに遷移し、「通報するボタン」を押下後、通報内容送信ページにて、内容を入力して送信することで、管理者側の判断の基、アカウントBANすることができる。  


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
| birthday           | date   | null: false |

### Association
- has_many :pages
- has_many :reviews
- has_many :repls
- has_many :dm_users
- has_many :dms, through: :dm_users
- has_many :bans
- has_many :blocks
- has_many :crs
- has_many :cools
- has_many :cutes
- has_many :scareds
- has_many :healings
- has_many :funs
- has_many :interestings
- has_many :thought_provokings

## pages テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| title       | string     | null: false                    |
| category_id | integer    | null: false                    |

### Association
- belongs_to :user
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
- has_many :repls
- has_many :crs
- has_many :cools
- has_many :cutes
- has_many :scareds
- has_many :healings
- has_many :funs
- has_many :interestings
- has_many :thought_provokings


## review_user テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| review  | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :review


## repls テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| review  | references | null: false, foreign_key: true |
| repl    | text       |                                |

### Association
- belongs_to :user
- belongs_to :review


## crs テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| page   | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :page

## cools テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| page   | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :page

## cutes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| page   | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :page

## scareds テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| page   | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :page

## healings テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| page   | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :page

## funs テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| page   | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :page

## interestings テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| page   | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :page

## thoughtprovoking テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| page   | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :page

## dm_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| dm     | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :dm

## dms テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| dm_message  | string     | null: false                    |


### Association
- has_many :dm_users

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