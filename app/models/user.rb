class User < ApplicationRecord
    validates :username, :password, presence: true
    validates :username, uniqueness: {case_sensitive: false}

    has_many :user_bugs
    has_many :bugs, through: :user_bugs
    has_many :user_fishes
    has_many :fish, through: :user_fishes 
    has_many :user_fossils
    has_many :fossils, through: :user_fossils 
    has_many :user_items
    has_many :items, through: :user_items
    has_many :user_seacreatures 
    has_many :sea_creatures, through: :user_seacreatures
    has_many :user_villagers
    has_many :villagers, through: :user_villagers
    has_many :pictures
    has_many :likes
    has_many :comments
    has_many :tag_follows
    has_many :tags, through: :tag_follows
end
