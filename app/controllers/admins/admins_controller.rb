class Admins::AdminsController < AdminsBackofficeController
  before_action :load_admin, only: [:edit, :update]
  before_action :verify_password, only: [:update]

  def index
    @admins = Admin.all
  end

  def edit
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to admins_admins_path, notice: "Usuario cadastrado com sucesso!"
    else
      render :new
    end
  end

  def update
    if @admin.update(admin_params)
      redirect_to admins_admins_path, notice: "Usuario atualizado com sucesso!"
    else
      render :edit
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

  def load_admin
    @admin = Admin.find(params[:id])
  end

  def verify_password
    if params[:admin][:password].blank? && params[:admin][:password_confirmation].blank?
      params[:admin].extract!(:password, :password_confirmation)
    end
  end
end
