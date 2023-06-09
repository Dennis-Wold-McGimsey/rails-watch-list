class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: { scope: :list,
      message: "should have a unique pair" }
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true
end
