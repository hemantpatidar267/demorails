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


  def login_user
    client = Client.find_by(email: params[:email])

    if client && client.password == params[:password]
      session[:client_id] = client.id
      redirect_to hemant_path, notice: "Logged in successfully!"
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def hemant
  end 

  def destroy
    session[:client_id] = nil
    redirect_to login_path, notice: "Logged out successfully!"
  end

   private
    def client_params
      params.require(:client).permit(:name, :status, :email, :password)
    end

end
