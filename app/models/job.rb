class Job < ApplicationRecord
  belongs_to :part,#, optional: true,
    :foreign_key => 'part_id'

  validates :wv, :part_id, :coat_date, :coat_time, :lot_quantity, :test_quantity, :mfg_int, presence: true
end
