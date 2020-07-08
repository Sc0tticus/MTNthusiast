class Trip < ApplicationRecord
  belongs_to :guide
  belongs_to :client
end
