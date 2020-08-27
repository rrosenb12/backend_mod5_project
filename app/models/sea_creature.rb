class SeaCreature < ApplicationRecord
    has_many :user_seacreatures
    has_many :users, through: :user_seacreatures
end
