class Farm < ApplicationRecord
    belongs_to :user
    has_many :crops, dependent: :destroy

    accepts_nested_attributes_for :crops, allow_destroy: true

    validates :name, presence: true
    validates :location, presence: true
end
