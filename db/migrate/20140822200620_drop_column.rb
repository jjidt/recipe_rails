class DropColumn < ActiveRecord::Migration
  def change
    remove_column :ingredients_recipes, :tag_id

    change_table :ingredients_recipes do |t|
      t.belongs_to :ingredients
    end

  end
end
