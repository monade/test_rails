class Post < ApplicationRecord
  has_many :tags

  validates :title, presence: true
end
