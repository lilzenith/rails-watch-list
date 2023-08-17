class Bookmark < ApplicationRecord
  belongs_to :movie, foreign_key: true
  belongs_to :list, foreign_key: true

  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }
end
