class UserFish < ApplicationRecord
    belongs_to :fish
    belongs_to :user
end
