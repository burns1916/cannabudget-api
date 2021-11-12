class Income < ApplicationRecord
    belongs_to :crop

    validates :name, presence: true
    validates :amount, presence: true
end
