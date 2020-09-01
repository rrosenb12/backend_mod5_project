class Picture < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :comments

    has_one_attached :image
    
    self.include_root_in_json = false

end
