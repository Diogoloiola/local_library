class Book < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  belongs_to :language
end
