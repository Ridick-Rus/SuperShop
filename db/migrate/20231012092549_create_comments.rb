class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.bigint :user_id
      t.bigint :commentable_id
      t.string :commentable_type
      t.timestamps
    end

    add_index :comments, [:commentable_id, :commentable_type]
  end
end
