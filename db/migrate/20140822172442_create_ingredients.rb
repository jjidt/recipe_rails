class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
    end
    create_table :tags do |t|
      t.string :name
    end
  end
end
