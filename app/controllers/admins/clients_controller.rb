class Admins::ClientsController < AdminsBackofficeController
  before_action :load_client, only: [:edit, :update]

  def index
    @clients = Client.all
  end

  def edit
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to admins_clients_path, notice: "Cliente cadastrado com sucesso!"
    else
      render :new
    end
  end

  def update
    if @client.update(client_params)
      redirect_to admins_clients_path, notice: "Cliente atualizado com sucesso!"
    else
      render :edit
    end
  end

  private

  def client_params
    params.require(:client).permit(:name_full, :cellphone, :rg, :child)
  end

  def load_client
    @client = Client.find(params[:id])
  end

end
