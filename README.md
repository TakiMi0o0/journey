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
- has_many :locations


## books テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| title            | string     | null: false                    |
| description      | text       |                                |
| start            | date       | null: false                    |
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
| user             | references | null: false, foreign_key: true |
| book             | references | null: false, foreign_key: true |
| summary          | string     | null: false                    |
| departure_time   | datetime   | null: false                    |
| icon_id          | integer    |                                |
| cost             | string     |                                |
| url1             | string     |                                |
| url2             | string     |                                |
| memo             | text       |                                |

### Association

- belongs_to :book
- has_many :users
- has_many :locations


## locations テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| schedule         | references | null: false, foreign_key: true |
| departure_time2  | datetime   |                                |
| arrival_time     | datetime   |                                |
| departure        | string     |                                |
| arrival          | string     |                                |
| icon_id2         | integer    |                                |

### Association

- belongs_to :schedule
- has_many :users


## lists テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| book          | references | null: false, foreign_key: true |
| category      | string     | null: false                    |
| content       | string     | null: false                    |
| quantity      | integer    |                                |
| price         | integer    |                                |
| list_memo     | text       |                                |

### Association

- belongs_to :book
- has_many :users