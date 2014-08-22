require 'rails_helper'

describe Ingredient do
  it { should validate_presence_of :name }
  it { should have_and_belong_to_many :recipes }
end
