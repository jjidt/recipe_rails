class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.belongs_to :ingredient
      t.belongs_to :tag
    end
  end
end
