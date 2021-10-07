class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :income, :expense, :crop
end
