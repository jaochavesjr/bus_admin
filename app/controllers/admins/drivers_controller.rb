class Admins::DriversController < AdminsBackofficeController
  before_action :load_driver, only: [:edit, :update]

  def index
    @drivers = Driver.all
  end

  def edit
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(drive_params)
    if @driver.save
      redirect_to admins_drivers_path, notice: "Motorista cadastrado com sucesso!"
    else
      render :new
    end
  end

  def update
    if @driver.update(drive_params)
      redirect_to admins_drivers_path, notice: "Motorista atualizado com sucesso!"
    else
      render :edit
    end
  end

  private

  def drive_params
    params.require(:driver).permit(:name_full, :nickname, :cpf, :cellphone, :active)
  end

  def load_driver
    @driver = Driver.find(params[:id])
  end

end
