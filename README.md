# fleamarket_sample_77b DB設計
## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|text|text|null: false|
|price|integer|null: false|
|brand|string|index: true|
|category|references|null: false, foreign_key: true|
|size|references|foreign_key: true|
|status|references|foreign_key: true|
|postage|references|null: false, foreign_key: true|
|area|references|null: false, foreign_key: true|
|shipping_date|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
|purchase|boolean|null: false, default: false|
### Association
- belongs_to :user
- belongs_to :second_genre
- belongs_to :third_genre
- belings_to :size
- belings_to :area
- belings_to :shipping_date
- belings_to :postage
- belings_to :status
- has_many :pictures
- has_many :comments
- has_many :users, through: :favorites
- has_many :favorites
- has_many :reports
## categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|ancestry|string|index: true|
### Association
- has_many :products
## sizesテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
### Association
- has_many :products
## statusesテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
### Association
- has_many :products
## postagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
### Association
- has_many :products
## areasテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :products
- has_many :adresses
## shipping_datesテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
### Association
- has_many :products
## picturesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product|references|null: false, foreign_key: true|
### Association
- belongs_to :product
## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|product|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :product
- belongs_to :user
## favoriteテーブル
|Column|Type|Options|
|------|----|-------|
|product|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :product
- belongs_to :user
## reportsテーブル
|Column|Type|Options|
|------|----|-------|
|product|references|null: false|
|user|references|null: false|
### Association
- belongs_to :product
- belongs_to :user
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|dob|date|null: false|
|comment|text||
|phonenumber|string||
|sex|string||
|icon|string||
### Association
- has_many :products
- has_many :favorites
- has_many :reports
- has_many :pruducts
- has_many :cards
- has_many :comments
- belongs_to :address
## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|city|string|null: false|
|number|string|null: false|
|building|string||
|zip|integer|null: false|
|phonenumber|string||
|area|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :area
- belongs_to :user
## Cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|customer_id|string|null: false|
|card_id|string|null: false|
### Association
- belongs_to :user
## purchaseテーブル
|Column|Type|Options|
|------|----|-------|
|product|references|foreign_key: true|
|status|references|foreign_key: true|
### Association
- belongs_to :user
- has_one :p-status
- has_one :product
## p-statusテーブル
|Column|Type|Options|
|------|----|-------|
|status|string||
### Association
- belongs_to :purchase
