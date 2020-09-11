class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :message, :point_id, :age_id, presence: true
  validates :point_id, numericality: { other_than: 1 }
  validates :age_id, numericality: { other_than: 1 }
end
