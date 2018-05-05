class UsersController < ApplicationController
  def index
  end

  def register
    @user = User.new(full_name: params[:full_name], address: params[:street_address],city: params[:city], state: params[:state], zip: params[:zip], country: params[:country], email: params[:email], user_name: params[:user_name], password: params[:pw])

    cookies[:user_name]=params[:user_name]
    if User.exists?(user_name: @user.user_name)
      flash[:notice] = "User already exists!!!"
      render '/users/index'
     else
       @user.save && params[:user_name] != nil
      #  flash[:notice] = "User succesfully registered!"
       @username = cookies[:user_name]
     end
         params[:phone].values.each{|n| Phone.new(number: n, user_id: @user.id).save}


end
end
