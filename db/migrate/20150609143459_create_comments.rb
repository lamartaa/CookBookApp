class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email
      t.string :message
      t.integer :recipe_id
      t.timestamps :date
    end
  end
end
