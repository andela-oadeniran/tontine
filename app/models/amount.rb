class Amount < ApplicationRecord
  belongs_to :group

  validates_presence_of :group
end
