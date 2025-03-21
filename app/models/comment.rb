class Comment < ApplicationRecord
  belongs_to :post

  # Validations
  validates :content, presence: true
end
