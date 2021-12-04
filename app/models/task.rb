class Task < ApplicationRecord
  belongs_to :author, required: true
  validates :title, :description, presence: true
end
