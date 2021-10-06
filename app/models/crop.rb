class Crop < ApplicationRecord
    belongs_to :farm, inverse_of :crops
    has_many :transactions, dependant: :destroy

    accepts_nested_attributes_for :transactionss, allow_destroy: true

    validates :strain_name, presence: true
end
