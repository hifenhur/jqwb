class EstoquesController < ApplicationController
  # GET /estoques
  # GET /estoques.json
  def index
    @usuarios = Usuario.order('name ASC')
    query = params[:query]

  	@logs = if !params[:query] || query[:usuario].empty?
       EstoqueLog.includes(:qrcode, :usuario).paginate(:page => params[:page], :per_page => 10)
    else
       Usuario.find(query[:usuario]).estoque_logs.includes(:qrcode, :usuario).paginate(:page => params[:page], :per_page => 10)  
	  end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estoques }
    end
  end

 
end
