class FarmSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :user, :crops
  has_many :crops
  belongs_to :user
end
