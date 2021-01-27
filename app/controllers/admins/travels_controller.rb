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

  private

  def travel_params
    params.require(:travel).permit(:origin_id, :destination_id, :car_id, :date)
  end

  def load_travel
    @travel = Travel.find(params[:id])
  end
end
