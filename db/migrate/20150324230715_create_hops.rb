class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.text :description
      t.belongs_to :recipe, index: true

      t.timestamps null: false
    end
    add_foreign_key :hops, :recipes
  end
end
