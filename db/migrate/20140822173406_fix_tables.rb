class FixTables < ActiveRecord::Migration
  def change
    remove_column :recipes, :ingredient_id
    remove_column :ingredients, :recipe_id
    remove_column :recipes, :tag_id
    remove_column :tags, :recipe_id
  end
end
