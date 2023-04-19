class AddDepthToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :depth, :integer, default: 0
  end
end
