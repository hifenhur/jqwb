class EstoquesController < ApplicationController
  # GET /estoques
  # GET /estoques.json
  def index
    @usuarios = Usuario.order('name ASC')
    @search = EstoqueLog.includes(:qrcode, :usuario).search(params[:q])
    @logs = @search.result


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estoques }
    end
  end


end
