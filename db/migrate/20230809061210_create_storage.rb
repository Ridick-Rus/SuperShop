class CreateStorage < ActiveRecord::Migration[7.0]
  def change
    create_table :storages do |t|
      t.integer :amount, default: 0, null: false
      t.check_constraint "amount >= 0", name: "amount_check"
      t.references :product, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
