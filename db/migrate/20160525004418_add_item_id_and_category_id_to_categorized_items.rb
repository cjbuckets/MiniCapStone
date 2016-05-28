class AddItemIdAndCategoryIdToCategorizedItems < ActiveRecord::Migration
  def change
    add_column :categorized_items, :item_id, :integer
    add_column :categorized_items, :category_id, :integer
  end
end
