class Item < ApplicationRecord
  validates :name, :done, presence: true

  belongs_to :todo
end
