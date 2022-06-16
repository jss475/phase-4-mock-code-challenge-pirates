class IndividualPirateSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  # has_many :treasures

  has_many :islands, through: :treasures
end
