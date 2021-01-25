class Admins::AdminsController < AdminsBackofficeController
  before_action :load_admin, only: [:edit]

  def index
    @admins = Admin.all
  end

  def edit
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password)
  end

  def load_admin
    @admin = Admin.find(params[:id])
  end
end
