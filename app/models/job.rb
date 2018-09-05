class Job < ApplicationRecord
  belongs_to :part
  validates :id, :lot_quantity, presence: true
  validates :lot_quantity, numericality: { less_than_or_equal_to: 9000 }
  validates :id, :uniqueness =>  {:message => "has already been created." }
  validates :id, format: {without: /WV/, message: "cannot contain 'WV'."}
  before_save { |job| job.qc_int.upcase! if qc_int}
end
