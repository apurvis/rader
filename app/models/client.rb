class Client < ApplicationRecord
  has_paper_trail

  has_many :raids_clients
  has_many :raids, through: :raids_clients

  validates :name, presence: true
end
