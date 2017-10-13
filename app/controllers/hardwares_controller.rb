class HardwaresController < ApplicationController
	def index
		@hardwares = Hardware.created_at
	end

	def show
		@hardware = Hardware.find(params[:id])
	end

	def edit
		@hardware = Hardware.find(params[:id])
	end

	def update
		@hardware = Hardware.find(params[:id])	
		@hardware.update(hardware_params)
		redirect_to @hardware
	end

  	def new
  		@hardware = Hardware.new
  	end

  	def create
   		@hardware = Hardware.new(hardware_params)
  		@hardware.save
  		redirect_to @hardware  
  	end

  	def destroy
  		@hardware = Hardware.find(params[:id])
  		@hardware.destroy
  		redirect_to hardwares_url
  	end

  	private def hardware_params
  		params.require(:hardware).permit(:nome, :valor, :descricao, :tipo, :poster)

  	end

end
