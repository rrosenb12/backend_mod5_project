class Fossil < ApplicationRecord
    has_many :user_fossils
    has_many :users, through: :user_fossils
end
