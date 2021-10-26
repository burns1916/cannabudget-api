class User < ApplicationRecord
    has_secure_password
    has_many :farms, dependent: :destroy

    validates :username, uniqueness: true
end
