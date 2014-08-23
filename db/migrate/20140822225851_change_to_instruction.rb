class ChangeToInstruction < ActiveRecord::Migration
  def change
    remove_column :recipes, :instructions
    add_column :recipes, :instruction, :text
  end
end
