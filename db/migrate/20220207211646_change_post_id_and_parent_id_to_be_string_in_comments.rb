class ChangePostIdAndParentIdToBeStringInComments < ActiveRecord::Migration[6.1]
  def up
    change_column :comments, :post_id, :string
    change_column :comments, :parent_id, :string
  end

  def down
    change_column :comments, :post_id, :integer
    change_column :comments, :parent_id, :integer
  end
end
