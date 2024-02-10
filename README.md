# README
<!-- usersテーブル -->
| Column             | Type   | Options                   |
| ------------------ | ------ | ----------- |
| nickname            | string  | null: false               |
| email               | string  | null: false, unique: true |
| encrypted_password  | string  | null: false               |
| place               | string  | null: false               |


### Association
has_many :stores

<!-- storesテーブル -->
| Column             | Type   | Options                   |
| ------------------ | ------ | ----------- |
| name          | string      | null: false                    |
| address       | text        |                                |
| phone_number  | string      | null: false                    |
| opening_hours | text        | null: false                    |
| latitude      | float       | null: false                    |
| longitude     | float       | null: false                    |
| memo          | text        | null: false                    |
| user          | references  | null: false, foreign_key: true |

### Association
belongs_to :user
has_

<!-- bookmarksテーブル -->
| Column             | Type   | Options                   |
| ------------------ | ------ | ----------- |
| user          | references  | null: false, foreign_key: true |
| store         | references  | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :store