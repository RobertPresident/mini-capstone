class Product < ActiveRecord::Base

  belongs_to :supplier
  has_many :images
  has_many :orders
  belongs_to :user

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

