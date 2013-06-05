class Qrcode < ActiveRecord::Base
  attr_accessible :cod_qrcode, :status

  def to_s
  	"#{cod_qrcode}"
  end
end
