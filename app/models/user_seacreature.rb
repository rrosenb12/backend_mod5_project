class UserSeacreature < ApplicationRecord
    belongs_to :user
    belongs_to :sea_creature
end
