class Image < ApplicationRecord
  has_many :image_tags
  has_many :tags, through: :image_tags
  belongs_to :user
end
