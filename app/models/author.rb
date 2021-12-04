class Author < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
