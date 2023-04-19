class ChangeScoreColumnType < ActiveRecord::Migration[7.0]
  def up
    change_column :articles, :score, :float, default: 0
  end

  def down
    change_column :articles, :score, :integer, default: 0
  end
end
