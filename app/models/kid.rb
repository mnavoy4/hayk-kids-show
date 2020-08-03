class Kid < ApplicationRecord
  validates :age, presence: true, numericality: {
    only_integer: true,
    greater_than: 6,
    less_than: 15
  }
  validates :username, presence: true, uniqueness: true, length: {
    minumum: 7,
    maximum: 25
  }
end
