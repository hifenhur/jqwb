class Qrcode < ActiveRecord::Base
  attr_accessible :cod_qrcode

  belongs_to :status, class_name: 'QrcodeStatus', foreign_key: 'id_status_qrcode'
  def to_s
  	"#{cod_qrcode}"
  end
end
