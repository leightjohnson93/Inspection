class Job < ApplicationRecord
  belongs_to :part
  validates :wv, :coat_date, :coat_time, :lot_quantity, :test_quantity, :mfg_int, presence: true
end
