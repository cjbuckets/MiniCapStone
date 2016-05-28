class AddSupplierIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :supplier_id, :integer, default: 1
  end
end
