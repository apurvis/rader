class Raid < ApplicationRecord
  has_many :raids_clients
  has_many :clients, through: :raids_clients

  def to_s
    "#{zip_code}:#{raided_at}"
  end

  def number_of_arrests
    RaidsClient.where(raid_id: id, arrested: true).size
  end
end
