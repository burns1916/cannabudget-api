class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :crop
end
