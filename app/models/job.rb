class Job < ApplicationRecord
  validates :wv, :part, :coat_date, :coat_time, :description, :lot_quantity, :test_quantity, :mfg_int, presence: true
end
