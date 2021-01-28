class Admins::TravelsController < AdminsBackofficeController
  before_action :load_travel, only: [:edit, :update]

  def index
    @travels = Travel.all
  end

  def edit
  end

  def new
    @travel = Travel.new
  end

  def create
    @travel = Travel.new(travel_params)
    if @travel.save
      redirect_to admins_travels_path, notice: "Viagemm cadastrado com sucesso!"
    else
      render :new
    end
  end

  def update
    if @travel.update(travel_params)
      redirect_to admins_travels_path, notice: "Viagem atualizado com sucesso!"
    else
      render :edit
    end
  end

  def cities_by_state
    state_id = params[:id].to_i
    cities = City.where(:state_id => state_id)
    cty = []
    cities.each do |city|
      cty << {:id => city.id, :n => city.name}
    end
    render :json => {:cty => cty.compact}.as_json
  end

  private

  def travel_params
    params.require(:travel).permit(:origin_id, :destination_id, :car_id, :date, driver_ids: [])
  end

  def load_travel
    @travel = Travel.find(params[:id])
  end
end
