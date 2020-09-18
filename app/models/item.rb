class Item < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image


  validates :image, :name, :text, :category_id, :price, :point_id, presence: true
  validates :category_id, numericality: { other_than: 1 }
  validates :point_id, numericality: { other_than: 1 }

  def self.search(search)
    if search != ""
      Item.where('name LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end
end
