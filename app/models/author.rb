class Author < ApplicationRecord
  has_many :books
  validates :name, presence: true
  validates :date_of_birth, presence: true
  validates :date_of_death, presence: true
end
