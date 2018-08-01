class Job < ApplicationRecord
  belongs_to :part
  validates :coat_time, :lot_quantity, :test_quantity, presence: true
  validates :id, uniqueness: true
  validates :lot_quantity, numericality: { less_than_or_equal_to: 9000}
end
