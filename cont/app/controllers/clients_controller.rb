class ClientsController < ApplicationController
	
	def index
		@client = Client.all
	end	

	def new
		@client = Client.new
	end
	def show
	end

	def create
		@client = Client.new(params[:client])
		if @client.save
			redirect_to @client
		else
			render 'new'
		end
	end
	
end




