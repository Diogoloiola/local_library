class Author < ApplicationRecord
  has_many :books
  validates :name, presence: true,
                   uniqueness: { case_sensitive: false, message: 'Esse nome já consta em nossa base, tente outro nome' }
  validates :date_of_birth, presence: true
  validates :date_of_death, presence: true
end
