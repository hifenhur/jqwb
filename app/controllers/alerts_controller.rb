class AlertsController < ApplicationController
  before_filter :authenticate_user!
  layout false, :only => :map
  # GET /alerts
  # GET /alerts.json
  def index
    @agentes = Agent.all
    @monitores = Munitor.where("type = 'M'")
    
    if params[:query]
      query = params[:query]

      @alerts = if query[:monitor].empty?
         Agent.find(query[:agent]).alerts.paginate(:page => params[:page], :per_page => 10)
      elsif query[:agent].empty?
         Munitor.find(query[:monitor]).alerts.paginate(:page => params[:page], :per_page => 10)
      elsif !query[:agent].empty? && !query[:monitor].empty?
         Alert.where("id_monitor = '#{query[:monitor]}' and id_agent = '#{query[:agent]}'").paginate(:page => params[:page], :per_page => 10)
      end

    else
      @alerts = Alert.order('id_alert DESC').paginate(:page => params[:page], :per_page => 10)  
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

  # GET /alerts/new
  # GET /alerts/new.json
  def new
    @alert = Alert.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alert }
    end
  end

  # GET /alerts/1/edit
  def edit
    @alert = Alert.find(params[:id])
  end

  # POST /alerts
  # POST /alerts.json
  def create
    @alert = Alert.new(params[:alert])

    respond_to do |format|
      if @alert.save
        format.html { redirect_to @alert, notice: 'Alert was successfully created.' }
        format.json { render json: @alert, status: :created, location: @alert }
      else
        format.html { render action: "new" }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alerts/1
  # PUT /alerts/1.json
  def update
    @alert = Alert.find(params[:id])

    respond_to do |format|
      if @alert.update_attributes(params[:alert])
        format.html { redirect_to @alert, notice: 'Alert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alerts/1
  # DELETE /alerts/1.json
  def destroy
    @alert = Alert.find(params[:id])
    @alert.destroy

    respond_to do |format|
      format.html { redirect_to alerts_url }
      format.json { head :no_content }
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
