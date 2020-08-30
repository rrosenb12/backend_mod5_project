class Picture < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :comments

    has_one_attached :image
end
