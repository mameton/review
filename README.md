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

![](https://gyazo.com/51f91c09b1cb2919fbd422f033b5d668)