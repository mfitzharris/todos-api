require 'rails_helper'

RSpec.describe Todo, type: :model do
  # association test
  # -- verify that Todo model has a one-to-many relationship with the Item model
  it { should have_many(:items).dependent(:destroy) }

  # validation tests
  # -- verify title and created_by columns are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
