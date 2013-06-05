class AlertsController < ApplicationController
  before_filter :authenticate_user!
  layout false, :only => :map
  # GET /alerts
  # GET /alerts.json
  def index
    @agentes = Agent.all
    @monitores = Munitor.where("type = 'M'")
    if params[:query]
    #caso tenha pesquisa armazenar os parametros em variaveis locais
      query_agent = params[:query][:agent]
      query_monitor = params[:query][:monitor]
    end
    #armazendando as alerts pela query
    @alerts = if !params[:query] || query_agent.empty? && query_monitor.empty?
      Alert.order('id_alert DESC').includes(:agent, :monitor).paginate(:page => params[:page], :per_page => 10)
    elsif query_agent.empty? && query_monitor
       Munitor.find(query_monitor).alerts.includes(:agent, :monitor).paginate(:page => params[:page], :per_page => 10)
    elsif query_monitor.empty?
       Agent.find(query_agent).alerts.includes(:agent, :monitor).paginate(:page => params[:page], :per_page => 10)
    else query_agent && query_monitor
      Alert.where("id_monitor = '#{query_monitor}' and id_agent = '#{query_agent}'").includes(:agent, :monitor).paginate(:page => params[:page], :per_page => 10)
    end
    
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
