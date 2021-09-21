class FarmSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :user
  belongs_to :user
end
