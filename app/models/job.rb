class Job < ApplicationRecord
  belongs_to :part, optional: true
  validates :wv, :part_number, :coat_date, :coat_time, :description, :lot_quantity, :test_quantity, :mfg_int, presence: true
end
