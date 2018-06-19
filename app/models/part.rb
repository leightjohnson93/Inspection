class Part < ApplicationRecord
  self.table_name = :items
  self.primary_key = :part
  has_many :jobs
end
