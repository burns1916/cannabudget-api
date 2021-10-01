class CropSerializer < ActiveModel::Serializer
  attributes :id, :strain_name, :harvest_date, :farm
  belongs_to :farm
end
