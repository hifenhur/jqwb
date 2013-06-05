class EstoqueLog < ActiveRecord::Base
  self.table_name = "stock_control_qrcode"
  attr_accessible :dh_ins, :qrcode_band
  
  belongs_to :qrcode, class_name: 'Qrcode', foreign_key: 'id_qrcodes'
  belongs_to :usuario, class_name: 'Usuario', foreign_key: 'id_user'
end
