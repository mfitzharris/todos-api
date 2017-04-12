require 'rails_helper'

RSpec.describe Item, type: :model do
  # association test
  # -- verify an Item belongs to a single Todo 
  it { should belong_to(:todo) }

  # validation test
  # -- verify name column is present before save
  it { should validate_presence_of(:name)}
end
