class Kitchen < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  with_options presence: true do
    validates :name
    validates :genre_id, numericality: { other_than: 0, message: 'select' }
    validates :image
  end

  belongs_to :user
  has_many :comments
  has_one_attached :image
end
