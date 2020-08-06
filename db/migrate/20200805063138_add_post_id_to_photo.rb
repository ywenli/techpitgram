class AddPostIdToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :post_id, :string
  end
end
