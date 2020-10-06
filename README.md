<!-- # テーブル設計

## users テーブル

| Column     | Type      | Options        |
| ---------- | --------- | -------------- |
| nickname   | string    | null: false    |
| email      | string    | null: false    |
| password   | string    | null: false    |

### Association
- has_many :items
- has_many :comments

## items テーブル

| Column     | Type          | Options                          |
| ---------- | ------------- | -------------------------------- |
| user       | references    | null: false, foreign_key: true   |
| image      | string        | null: false                      |
| name       | string        | null: false                      |
| url        | string        |                                  |
| text       | text          | null: false                      |
| category   | integer       | null: false                      |
| price      | integer       | null: false                      |

### Association
- belongs_to :user
- has_many :comments

## comments テーブル

| Column     | Type          | Options                          |
| ---------- | ------------- | -------------------------------- |
| user       | references    | null: false, foreign_key: true   |
| item       | references    | null: false, foreign_key: true   |
| message    | text          | null: false                      |
| point      | integer       | null: false                      |
| age        | integer       | null: false                      |

### Association
- belongs_to :user
- belongs_to :item -->


# レビューアプリ
![](https://github.com/mameton/review/blob/master/02d9a73013f4eb56599f321d04599ec6.gif)
### 商品を投稿しそれに対してコメントが記載できる

## 🌐　App URL

### https://review-28778.herokuapp.com/

## 📦 Function

### 👨‍👨‍👧‍👦 ログイン機能

### 🎁 投稿機能

### 📝 コメント機能

### 💬 コメントの変更＆削除機能
