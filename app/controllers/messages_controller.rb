class MessagesController < ApplicationController
	def index
    	@messages = Message.all
  	end

  	def create
   		@message = Message.create! model_params
  	end

  	private
  	def model_params
    	params.require(:message).permit :content, :name
  	end
end
