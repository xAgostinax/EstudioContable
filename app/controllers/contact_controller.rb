class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      #binding.pry
      NotificationsMailer.new_message(@message).deliver

      flash[:notice] = "La consulta fue enviada con exito!"
      redirect_to contacto_url
    else
      flash.now.alert = "Por favor,complete todos los campos!"
      render :action =>'new'
    end
  end

end
