class MainController < ApplicationController
  def index
  end
  def submitForm
      @message = params[:message];
      print params
      Messenger.gmail_message(@message).deliver
      Message.create(first_name:@message[:first_name],last_name:@message[:last_name],email:@message[:email],reason:@message[:reason],company_name:@message[:company_name],website:@message[:website],description:@message[:description],best_time:@message[:best_time])
      render :json => {success: "Thank you for contacting me!"}
  end
end
