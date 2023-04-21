# DB 設計

## users table


| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false,              |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| last_name          | string              | null: false               |
| first_name         | string              | null: false               |
| last_name_kana     | string              | null: false               |
| first_name_kana    | string              | null: false               |
| birthday           | date                | null: false               |


### Association

* has_many :items
* has_many :orders
* has_many :comments

## items table


| Column            |  Type       | Options                      |
|-------------------|-------------|------------------------------|
| user              | references  | null: false,foreign_key:true |
| name              | string      | null: false,                 |
| description       | text        | null: false,                 |
| category          | integer     | null: false,                 |
| item_status       | integer     | null: false,                 |
| shipping_cost     | integer     | null: false,                 |
| shipping_date     | integer     | null: false,                 |
| prefecture        | integer     | null: false,                 |
| price             | integer     | null: false,                 |



### Association

- belongs_to :user
- has_many :comments
- has_one :order

## orders table


| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |


### Association

- belongs_to :item
- belongs_to :user
- has_one :payment

## payments table


| Column        | Type       | Options                          | 
|---------------|------------|----------------------------------|
| order         | references | null: false, foreign_key: true   |
| postcode      | string     | null: false,                     |
| prefecture    | integer    | null: false,                     |
| city          | string     | null: false,                     |
| block         | string     | null: false,                     |
| building      | string     |                                  |
| phone_number  | string     | null: false,                     |


### Association
- belongs_to :order
