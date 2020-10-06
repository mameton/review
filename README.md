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
![](https://github.com/mameton/review/blob/master/2e1814c60acf0f1c7e0d0e9ddb6a1af6.gif)
![](https://github.com/mameton/review/blob/master/0221197790f3f21bcd73cfff577c1c22.gif)

### 🎁 投稿機能
![](https://github.com/mameton/review/blob/master/637b9bffcb84a54a72ff950300273a9d.gif)
![](https://github.com/mameton/review/blob/master/d9697808205958989944f6406fdcbb1f.gif)

### 📝 コメント機能
![](https://github.com/mameton/review/blob/master/cabc8ab759a35a0ffb81c23bfb1c3603.gif)
![](https://github.com/mameton/review/blob/master/211d4f1458b8768391653e46d14fdf29.gif)
