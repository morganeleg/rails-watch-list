class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates_associated :list, presence: true
  validates_associated :movie, presence: true
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }
end
