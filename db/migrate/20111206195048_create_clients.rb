class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :contact_name
      t.string :phone
      t.string :mobile

      t.timestamps
    end
  end
end
