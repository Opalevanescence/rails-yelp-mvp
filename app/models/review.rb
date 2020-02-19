class Review < ApplicationRecord
  belongs_to :restaurant

  # Parent restraunt
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true,
                     inclusion: { in: 0..5 },
                     numericality: { only_integer: true }
end
