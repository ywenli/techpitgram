class AddNameToUesr < ActiveRecord::Migration[5.2]
  def change
    add_column :uesrs, :name, :string
  end
end
