class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.text :body
      t.integer :post_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
