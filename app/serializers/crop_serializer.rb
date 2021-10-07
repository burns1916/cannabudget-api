class CropSerializer < ActiveModel::Serializer
  attributes :id, :strain_name, :farm, :transactions
  belongs_to :farm
end
