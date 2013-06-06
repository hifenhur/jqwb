class CreateTipoInfracaos < ActiveRecord::Migration
  def change
    create_table :tipo_infracaos do |t|
      t.string :description

      t.timestamps
    end
  end
end
