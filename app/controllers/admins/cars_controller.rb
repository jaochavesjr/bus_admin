class Admins::CarsController < AdminsBackofficeController
  before_action :load_car, only: [:edit, :update]

  def index
    @cars = Car.all
  end

  def edit
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to admins_cars_path, notice: "Carro cadastrado com sucesso!"
    else
      render :new
    end
  end

  def update
    if @car.update(car_params)
      redirect_to admins_cars_path, notice: "Carro atualizado com sucesso!"
    else
      render :edit
    end
  end

  private

  def car_params
    params.require(:car).permit(:plate, :model, :number_seats, :active)
  end

  def load_car
    @car = Car.find(params[:id])
  end
end
