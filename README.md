### アプリケーション名
Kitchen Car

### 概要
キッチンカーを探すアプリ

ログイン機能を使い、ユーザーは自分のお気に入りのキッチンカーを一覧で見ることができる

キッチンカーを登録したいユーザーはブログページのように追加することができる

### URL
https://kitchencar.onrender.com

### テスト用アカウント
email: 111@111　/ 
password: 123456a


### 作成背景
ターゲット層:

働く20代~40代男女（職場、家の近くでランチをとる時など探しやすく、かつ新しいものに関心を向けやすいと考えたため）

解決したい課題: 

・コロナ禍以降、これまでほぼ見なかったキッチンカーが、10台近く見かけることもあり増えた印象だが、キッチンカーの中には店舗を構えず移動式で営業しているものもあるため、キッチンカーそれぞれの口コミの投稿ができない、口コミすることができない

・キッチンカーを利用したいが、口コミなど確認ができないため評価がわからない

### 実装予定機能
・ログイン機能（店舗管理者、利用者で分ける予定）

・APIを利用し、地図からキッチンカーを探せる

・検索バーを設置し、キーワードで探せる

・お気に入りのキッチンカーをマイページで一覧確認できる



### 画面遷移図


### 環境開発
Rubyonrails7


### DB設計
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

has_many :bookmarks

<!-- bookmarksテーブル -->
| Column             | Type   | Options                   |
| ------------------ | ------ | ----------- |
| user          | references  | null: false, foreign_key: true |
| store         | references  | null: false, foreign_key: true |

### Association
belongs_to :user

belongs_to :store


<!-- reviewsテーブル -->
| Column             | Type   | Options                   |
| ------------------ | ------ | ----------- |
| user    | references  | null: false, foreign_key: true |
| store   | references  | null: false, foreign_key: true |
| title   | string      | null: false                    |
| comment | text        | null: false                    |

### Association
belongs_to :user

belongs_to :store


## データベース設計
![ER](https://gyazo.com/0e642753d5c81b26850a2abcdb669a16.png)