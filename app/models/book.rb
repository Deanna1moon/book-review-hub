class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
belongs_to :user
  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :description, presence: true
end