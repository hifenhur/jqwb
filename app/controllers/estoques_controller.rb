class EstoquesController < ApplicationController
  # GET /estoques
  # GET /estoques.json
  authorize_resource :estoque_log
  def index
    #@usuarios = Usuario.order('name ASC')
    #@search = EstoqueLog.includes(:qrcode, :usuario).search(params[:q])
    #@logs = @search.result.paginate(page: params[:page], per_page: 10)
    @qrcodes_status = QrcodeStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estoques }
    end
  end


end
