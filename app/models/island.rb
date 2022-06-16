class Island < ApplicationRecord
    validates :name, presence: true

    has_many :treasures
    has_many :pirates, through: :treasures
end
