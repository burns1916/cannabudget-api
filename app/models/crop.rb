class Crop < ApplicationRecord
    belongs_to :farm

    validates :strain_name, presence: true
    validates :harvest_date, presence: true
end
