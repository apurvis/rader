class RaidsClient < ApplicationRecord
  belongs_to :raid
  belongs_to :client
end
