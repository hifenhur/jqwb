class Trecho < ActiveRecord::Base
  self.table_name = "stretch"	
  attr_accessible :perimeter, :side_left_start, :side_left_stop, :side_right_start, :side_right_stop, :street
end
