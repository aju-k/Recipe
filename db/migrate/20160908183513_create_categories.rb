class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string  :name
      t.string  :type
      t.integer :status, default: 1
      t.timestamps
    end
  end
end
