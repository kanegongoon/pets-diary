# アプリケーション名
Pets Diary

# アプリケーション概要
日々のペットの健康状態を記録しておくことが出来るアプリです。

# URL※
https://pets-diary.herokuapp.com/

# テスト用アカウント
ID:sample@sample.com
pass:sample123
ID:test@test.com
pass:test123
# 利用方法
ログイン→トップページからペットを登録→トップページからその日のペットの状態を入力後、投稿します。
トップページにてその日のペット状態を日記形式で確認することができます。

# アプリケーションを作成した背景
一緒に暮らしている猫がシニアになってきたので、投薬の記録やワクチン接種の記録などの日々の状態を記録して健康管理をしたいと思ったので開発しようと思いました。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/12-dT638ve9dC9cDF13inYejWKzLXbLdUZJksmuOHE9g/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明
ユーザー登録機能
ペット登録機能
ペットの状態登録機能

# 実装予定の機能
現在、検索機能の追加を検討中

# データベース設計
https://viewer.diagrams.net/?embed=1&configure=1&proto=json&lang=ja&noSaveBtn=1&noExitBtn=1&chrome=1&svg-warning=1&sync=manual&page-id=l9O9-5qT4q8xPPdfuE9v&highlight=0000ff&edit=_blank&layers=1&nav=1#

# 画面遷移図
https://viewer.diagrams.net/?embed=1&configure=1&proto=json&lang=ja&noSaveBtn=1&noExitBtn=1&chrome=1&svg-warning=1&sync=manual&page-id=Izl8fLh-cZy2eXITMVsq&highlight=0000ff&edit=_blank&layers=1&nav=1&page-id=Izl8fLh-cZy2eXITMVsq#

# 開発環境
フロントエンド、フレームワーク、データベース、テキストエディタ、タスク管理

# ローカルでの動作方法


# 工夫したポイント
ユーザーは複数のペットを登録でき、過去にそのペットがどんなご飯を食べて、どんな薬を処方されて、いつワクチンを打ったかを確認できるように機能を追加した事です。



# テーブル設計

## users テーブル
| Column                 | Type     | Options                   |
| ---------------------- | -------- | ------------------------- |
| nickname               | string   | null: false               |
| email                  | string   | null: false, unique: true |
| encrypted_password     | string   | null: false               |
| profile                | text     | null: false               |
| profile_image_id       | string   | null: false               |

### Association
 - has_many :informaions


## informations テーブル
| Column         | Type       | Options     |
| -------------- | ---------- | ----------- |
| name           | string     | null: false |
| sex            | string     | null: false |
| kinds          | string     |
| color          | string     | null: false |
| birthday       | date       | null: false |
| pet_image      | string     | null: false |
| user           | references | null: false,foreign_key: true |

### Association
 - belongs_to :user
 - has_one :detail


## details テーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| rice          | string     | null: false |
| medicine      | string     |
| vaccination   | string     | null: false |
| weight        | integer    | null: false |
| motion        | string     | null: false |
| snack         | string     |
| remarks       | text       |
| information   | references | null: false, foreign_key: true |

### Association
 - belongs_to :user
 - belongs_to :information
