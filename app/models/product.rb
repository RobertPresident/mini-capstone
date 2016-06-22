class Product < ActiveRecord::Base


  validates :name, presence: true
  validates :name, uniqueness: true

  validates :description, presence: true
  validates :description, length: { maximum: 200 }

  validates :price, numericality: true
  validates :price, presence: true
  validates :price, format: {with: /\A\d+(?:\.\d{0,2})?\z/, message: "must be a price."}


  belongs_to :supplier
  has_many :images
  has_many :orders
  belongs_to :user
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products
  has_many :orders, through: :carted_products


  TAXRATE = 0.09

  def sales_message
      if price < 12
        "Discount Item!"
      else
        "On Sale!"
    end
  end

    def tax
      TAXRATE * price
    end

    def total
      price + tax
    end

    def image_preview_url
      images.first.url
    end
    
  end

