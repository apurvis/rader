class RaidsClientsController < ApplicationController
  def new
    if params['raid_id']
      @raid = Raid.where(id: params['raid_id']).first
    else
      fail "No raid provided!"
    end
    @raids_client = RaidsClient.new(raid_id: @raid.id)
  end

  def create
    @raids_client = RaidsClient.first_or_create(raids_client_params.slice(:raid_id, :client_id)) do |rc|
      rc.notes = raids_client_params[:notes]
      rc.arrested = rc.arrested
    end

    if @raids_client.save
      redirect_to @raids_client.raid
    else
      render 'new'
    end
  end

  def raids_client_params
    params.require(:raids_client).permit(
      :raid_id,
      :client_id,
      :arrested,
      :notes
    )
  end
end
