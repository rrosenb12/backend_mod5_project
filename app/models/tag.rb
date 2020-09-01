class Tag < ApplicationRecord
    has_many :picture_tags
    has_many :pictures, through: :picture_tags

    self.include_root_in_json = false

end
