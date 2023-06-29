class ClientsController < ApplicationController
  def index
  end

  
  def new
    @client=Client.new
  end

  def show
     @clients=Client.all
  end

  def show_actorinact
    if params[:status] == "active"
      @clients = Client.active
    else
      @clients = Client.inactive
    end
  end

  def create
    @client =Client.new(client_params)
    if @client.save
      redirect_to @client
    else
      render :new
    end
  end

   private
    def client_params
      params.require(:client).permit(:name, :status, :phone, :address)
    end

end
