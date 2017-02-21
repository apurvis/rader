class Raid < ApplicationRecord
  def number_of_arrests
    RaidsClient.where(raid_id: id, arrested: true).size
  end
end
