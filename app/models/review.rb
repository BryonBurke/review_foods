class Review < ApplicationRecord
  belongs_to :product

  validates :author, presence: true
  validates_length_of :content_body, minimum: 50
  validates_length_of :content_body, maximum: 250
  # validates :rating, greater_than_or_equal_to: 1
  # validates :rating, less_than_or_equal_to: 5


end
