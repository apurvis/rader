class Client < ApplicationRecord
  has_many :raids_clients
  has_many :raids, through: :raids_clients
end
