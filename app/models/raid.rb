class Raid < ApplicationRecord
  has_many :raids_clients
  has_many :clients, through: :raids_clients

  validates :address, :type_of_raid, :zip_code, :raided_at, presence: true

  def to_s
    "#{type_of_raid} - #{zip_code}:#{raided_at}"
  end
end
