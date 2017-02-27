class RaidsClient < ApplicationRecord
  has_paper_trail

  belongs_to :raid
  belongs_to :client
end
