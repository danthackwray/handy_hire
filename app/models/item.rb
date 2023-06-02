class Item < ApplicationRecord
  belongs_to :user
  # has_one_attached :image
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true
  has_many :bookings

  include PgSearch::Model
    pg_search_scope :search_by_name_and_description,
      against: [ :name, :description],
      using: {
       tsearch: { prefix: true } # <-- now `superman batm` will return something!
     }
end
