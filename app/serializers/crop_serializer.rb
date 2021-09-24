class CropSerializer < ActiveModel::Serializer
  attributes :id, :strain_name, :harvest_date
  belongs_to :farm
end
