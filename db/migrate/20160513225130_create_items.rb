class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :product
      t.string :description
      t.string :price

      t.timestamps null: false
    end
  end
end
