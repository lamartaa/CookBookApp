class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :ingredients
      t.string :directions
      t.timestamps null: false
    end
  end
end
