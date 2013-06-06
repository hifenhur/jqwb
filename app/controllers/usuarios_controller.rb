class UsuariosController < ApplicationController
	layout false, only: :map
  authorize_resource
	def index
	  @usuarios = Usuario.order('name ASC').paginate(:page => params[:page], :per_page => 10)

	end

	def show
	  @usuario = Usuario.find(params[:id])
	end

	def map
	    @position = Usuario.find(params[:id]).last_position
	    @json = if @position
	    	@position.to_gmaps4rails
	    else
	    	false
	    end
	    
	    respond_to do |format|
	      format.html # map.html.erb
	    end
	end

	def all_map
		@usuarios = Usuario.all
		@positions = []
	    @usuarios.each do |usuario| 
		    if usuario.last_position 
				  @positions << usuario.last_position
		    end
		@json = @positions.to_gmaps4rails
	   	end
		respond_to do |format|
	      format.html # map_usuarios.html.erb
	    end
	end
end