class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :ingredients

  validates :name, presence: true
end
