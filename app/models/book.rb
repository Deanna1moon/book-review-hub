class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user
  
  # REDESIGN: Add book cover image support with Active Storage
  has_one_attached :cover_image, dependent: :destroy
  
  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :description, presence: true
end