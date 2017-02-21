class Raid < ApplicationRecord
  has_many :clients, through: :raids_clients

  def number_of_arrests
    RaidsClient.where(raid_id: id, arrested: true).size
  end
end
