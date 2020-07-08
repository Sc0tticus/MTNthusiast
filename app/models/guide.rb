class Guide < ApplicationRecord
    has_many :trips
    has_many :clients, through: :trips
end
