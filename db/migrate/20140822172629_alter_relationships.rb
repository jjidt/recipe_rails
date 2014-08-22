class AlterRelationships < ActiveRecord::Migration
  def change
    change_table :ingredients do |t|
      t.belongs_to :recipe
    end
    change_table :tags do |t|
      t.belongs_to :recipe
    end
  end
end
