class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  belongs_to :language

  validates :title, presence: true
  validates :summary, presence: true
  validates :ISBN, presence: true
end
