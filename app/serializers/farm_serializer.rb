class FarmSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :total, :user
  belongs_to :user
end
