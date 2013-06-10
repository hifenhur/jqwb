class AlertsController < ApplicationController
  layout false, :only => :map

  # GET /alerts
  # GET /alerts.json
  def index
    @agentes =[]
    @monitores =[]
    @agentes << ""
    @monitores << ""
    @agentes << Agent.all
    @monitores << Munitor.where("type = 'M'")
    @search = Alert.includes(:agent, :monitor, :infracao, :status).search(params[:q])
    @alerts = @search.result.paginate(page: params[:page], per_page: 10)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alerts }
    end
  end

  # GET /alerts/1
  # GET /alerts/1.json
  def show
    @alert = Alert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alert }
    end
  end

  def map
    @alert = Alert.find(params[:id])
    @json = @alert.to_gmaps4rails
    
    respond_to do |format|
      format.html # map.html.erb
      format.js # map.js
    end
  end
  
end
