class UserFossil < ApplicationRecord
    belongs_to :user
    belongs_to :fossil
end
