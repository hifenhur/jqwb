class GerenciarUsuariosController < ApplicationController
  # GET /gerenciar_usuarios
  # GET /gerenciar_usuarios.json
  def index
    @gerenciar_usuarios = GerenciarUsuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gerenciar_usuarios }
    end
  end

  # GET /gerenciar_usuarios/1
  # GET /gerenciar_usuarios/1.json
  def show
    @gerenciar_usuario = GerenciarUsuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gerenciar_usuario }
    end
  end

  # GET /gerenciar_usuarios/new
  # GET /gerenciar_usuarios/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gerenciar_usuario }
    end
  end

  # GET /gerenciar_usuarios/1/edit
  def edit
    @gerenciar_usuario = GerenciarUsuario.find(params[:id])
  end

  # POST /gerenciar_usuarios
  # POST /gerenciar_usuarios.json
  def create
    @gerenciar_usuario = GerenciarUsuario.new(params[:gerenciar_usuario])

    respond_to do |format|
      if @gerenciar_usuario.save
        format.html { redirect_to @gerenciar_usuario, notice: 'Gerenciar usuario was successfully created.' }
        format.json { render json: @gerenciar_usuario, status: :created, location: @gerenciar_usuario }
      else
        format.html { render action: "new" }
        format.json { render json: @gerenciar_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gerenciar_usuarios/1
  # PUT /gerenciar_usuarios/1.json
  def update
    @gerenciar_usuario = GerenciarUsuario.find(params[:id])

    respond_to do |format|
      if @gerenciar_usuario.update_attributes(params[:gerenciar_usuario])
        format.html { redirect_to @gerenciar_usuario, notice: 'Gerenciar usuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gerenciar_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

end
