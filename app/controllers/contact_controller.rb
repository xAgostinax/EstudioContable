class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    #binding.pry
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      #flash[:notice] = "El formulario se ha enviado correctamente"
     #redirect_to(root_path, :notice => "Message was successfully sent.")
      redirect_to contacto_url
    else
      flash.now.alert = "Please fill all fields."
      render :action =>'new'
    end
  end

end
