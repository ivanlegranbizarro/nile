class Book < ApplicationRecord
  validates :author, presence: true, length: { minimum: 3, maximum: 50 }
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
end
