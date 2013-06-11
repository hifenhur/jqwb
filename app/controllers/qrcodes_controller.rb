class QrcodesController < ApplicationController
  # GET /qrcodes
  # GET /qrcodes.json
  authorize_resource
  def index
    @qrcodes = Qrcode.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qrcodes }
    end
  end

 
end
