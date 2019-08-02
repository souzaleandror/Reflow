class Job < ApplicationRecord
  belongs_to :department
  belongs_to :company
  belongs_to :type_contraction
end
