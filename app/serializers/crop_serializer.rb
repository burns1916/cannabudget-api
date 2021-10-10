class CropSerializer < ActiveModel::Serializer
  attributes :id, :strain_name, :farm, :incomes, :expenses
  belongs_to :farm
  has_many :incomes
  has_many :expenses
end
