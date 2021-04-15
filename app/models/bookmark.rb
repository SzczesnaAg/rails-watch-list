class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }, allow_blank: false
  validates :movie_id, uniqueness: { scope: [:movie_id, :list_id] }
end
