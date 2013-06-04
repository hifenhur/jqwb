class EstoquesController < ApplicationController
  # GET /estoques
  # GET /estoques.json
  def index
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estoques }
    end
  end

 
end
