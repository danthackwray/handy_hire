class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true
end
