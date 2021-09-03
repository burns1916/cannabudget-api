class Farm < ApplicationRecord
    belongs_to :user
    has_many :crops

    validates :name, presence: true
    validates :location, presence: true
end
