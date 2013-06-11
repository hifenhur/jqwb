class TrechosController < ApplicationController
  # GET /trechos
  # GET /trechos.json
  authorize_resource
  def index
    @trechos = Trecho.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trechos }
    end
  end

  # GET /trechos/1
  # GET /trechos/1.json
  def show
    @trecho = Trecho.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trecho }
    end
  end

  # GET /trechos/new
  # GET /trechos/new.json
  def new
    @trecho = Trecho.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trecho }
    end
  end

  # GET /trechos/1/edit
  def edit
    @trecho = Trecho.find(params[:id])
  end

  # POST /trechos
  # POST /trechos.json
  def create
    @trecho = Trecho.new(params[:trecho])

    respond_to do |format|
      if @trecho.save
        format.html { redirect_to @trecho, notice: 'Trecho was successfully created.' }
        format.json { render json: @trecho, status: :created, location: @trecho }
      else
        format.html { render action: "new" }
        format.json { render json: @trecho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trechos/1
  # PUT /trechos/1.json
  def update
    @trecho = Trecho.find(params[:id])

    respond_to do |format|
      if @trecho.update_attributes(params[:trecho])
        format.html { redirect_to @trecho, notice: 'Trecho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trecho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trechos/1
  # DELETE /trechos/1.json
  def destroy
    @trecho = Trecho.find(params[:id])
    @trecho.destroy

    respond_to do |format|
      format.html { redirect_to trechos_url }
      format.json { head :no_content }
    end
  end
end
