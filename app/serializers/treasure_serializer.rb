class TreasureSerializer < ActiveModel::Serializer
  attributes :id, :contents

  belongs_to :pirate
  belongs_to :island
end
