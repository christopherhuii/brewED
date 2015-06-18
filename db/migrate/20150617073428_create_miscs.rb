class CreateMiscs < ActiveRecord::Migration
  def change
    create_table :miscs do |t|
      t.string :description
      t.belongs_to :recipe, index: true

      t.timestamps null: false
    end
    add_foreign_key :miscs, :recipes
  end
end
