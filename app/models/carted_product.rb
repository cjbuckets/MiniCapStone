class CartedProduct < ActiveRecord::Base

#belongs to is not plural damnitt
belongs_to :order
belongs_to :user 
belongs_to :item

end
