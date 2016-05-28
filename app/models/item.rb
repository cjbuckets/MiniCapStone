class Item < ActiveRecord::Base

  belongs_to :supplier
  has_many :categorized_items
  has_many :categories, through: :categorized_items
  has_many :images
  has_many :orders

  def sale_message

    if price.to_i < 800000
       "Discounted Item!!"
    else
       "Sale Item!!"
    end
  end

  def tax
    price.to_i * 0.09
  end

  def total 
    tax + price.to_i
    
  end

  def image_preview_url
    images.first.url
  end
end
