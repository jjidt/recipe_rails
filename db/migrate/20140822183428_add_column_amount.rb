class AddColumnAmount < ActiveRecord::Migration
  def change
    add_column :ingredients, :amount, :varchar
  end
end
