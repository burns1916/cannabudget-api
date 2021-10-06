class Crop < ApplicationRecord
    belongs_to :farm, inverse_of :crops
    has_many :incomes
    has_many :expenses


    validates :strain_name, presence: true
    validates :harvest_date, presence: true
end
