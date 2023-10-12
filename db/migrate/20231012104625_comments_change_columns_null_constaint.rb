class CommentsChangeColumnsNullConstaint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :comments, :commentable_id, false
    change_column_null :comments, :commentable_type, false
    change_column_null :comments, :user_id, false
    change_column_null :comments, :body, false
  end
end
