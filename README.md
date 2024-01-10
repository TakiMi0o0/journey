# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :books
- has_many :schedules
- has_many :lists

## books テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| title            | string     | null: false                    |
| description      | text       |                                |
| start            | date       |                                |
| end              | date       |                                |
| place            | string     |                                |
| publication      | string     | null: false                    |

### Association

- has_many :users
- has_many :schedules
- has_many :lists

## schedules テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user_id          | integer    | null: false, foreign_key: true |
| book_id          | integer    | null: false, foreign_key: true |
| summary          | string     | null: false                    |
| date_time        | datetime   | null: false                    |
| icon             | string     |                                |
| location         | string     |                                |
| departure        | string     |                                |
| arrival          | string     |                                |
| departure_time   | datetime   |                                |
| arrival_time     | datetime   |                                |
| cost             | string     |                                |
| url1             | string     |                                |
| url2             | string     |                                |
| memo             | text       |                                |

### Association

- belongs_to :user
- belongs_to :book
- has_many :lists

## lists テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| content       | string     | null: false                    |
| quantity      | integer    |                                |
| price         | integer    |                                |
| category_id   | integer    | null: false                    |
| list_memo     | text       |                                |

### Association

- belongs_to :user
- belongs_to :book
- belongs_to :schedule
