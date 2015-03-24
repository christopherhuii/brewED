class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.decimal :batch_size
      t.integer :boil_time
      t.decimal :OG
      t.decimal :FG
      t.integer :IBU
      t.decimal :ABV
      t.integer :SRM
      t.text :grain
      t.text :hops
      t.text :yeast
      t.text :directions
      t.text :notes

      t.timestamps null: false
    end
  end
end
