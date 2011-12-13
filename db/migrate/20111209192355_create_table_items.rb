class CreateTableItems < ActiveRecord::Migration
  def change
    create_table :table_items do |t|
      t.integer :table_price_id
      t.string  :description
      t.decimal :price

      t.timestamps
    end
  end
end
