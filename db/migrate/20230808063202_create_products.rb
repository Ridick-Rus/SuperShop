class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, index: { unique: true }
      t.text :description
      t.float :price, null: false

      t.timestamps
    end
  end
end
