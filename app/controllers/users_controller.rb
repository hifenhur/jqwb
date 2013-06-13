#encoding: utf-8
class UsersController < ApplicationController
  authorize_resource
  def new
    @user = User.new
    @roles = Role.all
  end

  def create
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    @user = User.new(params[:user])
    regra = Role.find(params[:regra])
    @roles = Role.all
    
    respond_to do |format|
      if @user.save 
        @user.roles << regra
        format.html { redirect_to new_user_path, notice: 'Usuario cadastrado com Sucesso.' }    
      else
        format.html { render action: "new" }
      end
    end

  end

end
