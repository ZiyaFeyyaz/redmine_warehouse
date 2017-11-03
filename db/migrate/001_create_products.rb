class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.float :price, default: 0, null: false
      t.integer :quantity, default: 0, null: false
      t.datetime :production_date
      t.integer :issue_id
    end
    add_index :products, :name, unique: true
    add_index :products, :issue_id
  end
end
