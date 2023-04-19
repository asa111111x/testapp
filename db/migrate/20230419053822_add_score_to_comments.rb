class AddScoreToComments < ActiveRecord::Migration[7.0]
  def up
    change_column :comments, :score, :float, default: 0
  end

  def down
    change_column :comments, :score, :integer, default: 0
  end
end
