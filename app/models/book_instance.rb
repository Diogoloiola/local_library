class BookInstance < ApplicationRecord
  validates :due_back, presence: true
  validates :imprint, presence: true
  validates :status, presence: true
end
