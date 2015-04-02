class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :recipe_id
      t.belongs_to :recipe

      t.timestamps null: false
    end
  end
end
