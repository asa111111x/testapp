class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :article_id
      t.integer :parent_id
      t.integer :score

      t.timestamps
    end
  end
end
