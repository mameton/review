class Item < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  validates :image, :name, :text, :category_id, :price,  presence: true
  validates :category_id, numericality: { other_than: 1 }
end
