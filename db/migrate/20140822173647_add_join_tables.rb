class AddJoinTables < ActiveRecord::Migration
  def change
    create_table :recipes_tags do |t|
      t.belongs_to :recipe
      t.belongs_to :tag
    end
    create_table :ingredients_recipes do |t|
      t.belongs_to :ingredient
      t.belongs_to :tag
    end
  end
end
