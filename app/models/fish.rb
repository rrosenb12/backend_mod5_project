class Fish < ApplicationRecord
    has_many :user_fishes
    has_many :users, through: :user_fishes
end
