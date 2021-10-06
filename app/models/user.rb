class User < ApplicationRecord
    has_secure_password
    has_many :farms

    validates :username, uniqueness: true
end
