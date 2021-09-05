class Book < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }

  belongs_to :author
end
