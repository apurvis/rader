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
    puts "slice: #{raids_client_params.slice(:raid_id, :client_id).pretty_inspect}"
    @raids_client = RaidsClient.where(raids_client_params.slice(:raid_id, :client_id)).first_or_create do |rc|
      rc.notes = raids_client_params[:notes]
      rc.arrested = raids_client_params[:arrested]
    end

    puts "RC: #{@raids_client.pretty_inspect}"

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
