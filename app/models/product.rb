class Product < ApplicationRecord
  

  has_many :pictures, dependent: :destroy
  belongs_to :category
  belongs_to :user
  
  accepts_nested_attributes_for :pictures, allow_destroy: true

  validates :name,:text,  presence: true
  validates :price, numericality:{greater_than: 300, less_than: 10000000}, presence: true
  validates :category_id, :size_id, :status_id, :postage_id, :area_id, :shipping_date_id, :user_id, presence: true

  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :size
  belongs_to_active_hash :status
  belongs_to_active_hash :area
  belongs_to_active_hash :postage
  belongs_to_active_hash :shipping_date
  belongs_to_active_hash :status
end
