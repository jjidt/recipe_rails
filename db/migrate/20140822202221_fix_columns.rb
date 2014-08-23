class FixColumns < ActiveRecord::Migration
  def change
    remove_column :ingredients_recipes, :ingredients_id
    change_table :ingredients_recipes do |t|
      t.belongs_to :recipe
    end
  end
end
