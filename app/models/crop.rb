class Crop < ApplicationRecord
    belongs_to :farm, inverse_of: :crops
    has_many :incomes, dependent: :destroy
    has_many :expenses, dependent: :destroy

    accepts_nested_attributes_for :incomes, allow_destroy: true
    accepts_nested_attributes_for :expenses, allow_destroy: true

    validates :strain_name, presence: true
end
