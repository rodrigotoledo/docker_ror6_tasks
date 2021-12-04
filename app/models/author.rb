class Author < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :avatar, file_size: { less_than_or_equal_to: 5000.kilobytes },
                     file_content_type: { allow: ['image/jpeg', 'image/png'] }

  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize: "100x100"
  end
end
