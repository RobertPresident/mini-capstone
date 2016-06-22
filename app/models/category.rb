 class Category < ActiveRecord::Base

  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :categorized_products
  has_many :products, through: :categorized_products
end
