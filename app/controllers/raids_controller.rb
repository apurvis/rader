class RaidsController < AuthenticatedController
  def index
    @raids = Raid.all
  end

  def edit
    @raid = Raid.where(id: params[:id]).first
  end

  def new
    @raid = Raid.new
  end

  def show
    @raid = Raid.where(id: params[:id]).first
  end

  def create
    @raid = Raid.new(raid_params)

    if @raid.save
      redirect_to @raid
    else
      render 'new'
    end
  end

  private

  def raid_params
    params.require(:raid).permit(
      :address,
      :age_of_answerer,
      :how_did_ice_make_its_presence_known,
      :name_of_answerer,
      :narrative_of_door_interaction,
      :narrative_of_entrance,
      :narrative_of_interaction_inside_home,
      :raided_at,
      :type_of_raid,
      :zip_code,
      :notes
    )
  end
end
