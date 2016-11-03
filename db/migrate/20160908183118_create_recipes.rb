class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :category_id
      t.string :name
      t.string :ingredients
      t.text   :description
      t.string :time_to_prepare
      t.string :recipe_type
      t.boolean :is_veg, default: true
      t.integer :status, default: 1
      t.timestamps
    end
  end
end
