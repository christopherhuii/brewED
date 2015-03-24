class CreateGrains < ActiveRecord::Migration
  def change
    create_table :grains do |t|
      t.text :description
      t.belongs_to :recipe, index: true

      t.timestamps null: false
    end
    add_foreign_key :grains, :recipes
  end
end
