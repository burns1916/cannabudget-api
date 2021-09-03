class User < ApplicationRecord
    has_secure_password
    has_many :farms
    has_many :crops, through :farms

    validates :username, uniqueness: { case_sensitive: false }
end
