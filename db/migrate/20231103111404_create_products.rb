class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :pname
      t.integer :price

      t.timestamps
    end
  end
end
