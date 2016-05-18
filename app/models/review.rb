class Review < ActiveRecord::Base
  has_one :review_group
  accepts_nested_attributes_for :review_group
end
