class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def edit
    @client = Client.where(id: params[:id]).first
  end

  def new
    @client = Client.new
  end

  def show
    @client = Client.where(id: params[:id]).first
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to @client
    else
      render 'new'
    end
  end

  private

  def client_params
    params.require(:client).permit(
      :name,
      :address,
      :gender
    )
  end
end
