class QrcodeStatus < ActiveRecord::Base
  self.table_name = 'status_qrcode'
  attr_accessible :description

  has_many :qrcodes, class_name: 'Qrcode', foreign_key: 'id_status_qrcode'
  
end
