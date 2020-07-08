class Client < ApplicationRecord
    has_many :trips
    has_many :guides, through: :trips
end
