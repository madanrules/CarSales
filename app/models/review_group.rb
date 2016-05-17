class ReviewGroup < ActiveRecord::Base
  belongs_to :user
  belongs_to :seller
  belongs_to :review
end
