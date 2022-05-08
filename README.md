# テーブル設計

## users テーブル

| Column                 | Type     | Options                   |
| ---------------------- | -------- | ------------------------- |
| email                  | string   | null: false, unique: true |
| encrypted_password     | string   | null: false               |
| nickname               | string   | null: false               |

### Association
 - belongs_to :memo
 - has_many :informaions


## memos テーブル
| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| title     | string     | null: false |
| content   | text       | null: false |
| time      | date       | null: false |

### Association
 - belongs_to :user
 - has_many :details


## informations テーブル
| Column         | Type       | Options     |
| -------------- | ---------- | ----------- |
| name           | string     | null: false |
| sex            | string     | null: false |
| kinds          | string     |
| color          | string     | null: false |
| birthday       | date       | null: false |
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
