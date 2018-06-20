class Test < ApplicationRecord
  belongs_to :part,
  :foreign_key => 'part_id'
end
