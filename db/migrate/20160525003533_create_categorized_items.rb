class CreateCategorizedItems < ActiveRecord::Migration
  def change
    create_table :categorized_items do |t|

      t.timestamps null: false
    end
  end
end
