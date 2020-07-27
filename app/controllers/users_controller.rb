class UsersController < ApplicationController
before_action :set_user

def index
    @gif = @user.gifs.sorted
end


private 
def set_user
    @user = User.find_by(params[:id])
end








end