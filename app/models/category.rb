class Category < ActiveRecord::Base
  
  has_many :categorized_items
  has_many :items, through: :categorized_items

end
