class CreateTablePrices < ActiveRecord::Migration
  def change
    create_table :table_prices do |t|
      t.references :client
      t.string :name
      t.boolean :active

      t.timestamps
    end
    add_index :table_prices, :client_id
  end
end
