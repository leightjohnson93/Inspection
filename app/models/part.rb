class Part < ApplicationRecord
  self.table_name = :items
  self.primary_key = :part
  has_many :jobs
  validates :part, :description, :color, :coating, :shape, :mfg, presence: true
  def self.ransackable_attributes(auth_object = nil)
    ["coating", "color", "created_at", "description", "mfg", "part", "shape", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["jobs"]
  end
end
