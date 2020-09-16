class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :product
      t.integer :category
      t.integer :status
      t.integer :delivery_fee
      t.integer :delivery_area
      t.integer :delivery_day
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.integer :view_count

      t.timestamps
    end
    add_index :items, :view_count
  end
end
