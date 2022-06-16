class Treasure < ApplicationRecord
    validates :pirate_id, numericality: {greater_than_or_equal_to: 0}
    validates :island_id, numericality: {greater_than_or_equal_to: 0}

    belongs_to :pirate
    belongs_to :island
end
