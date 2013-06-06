class RenameTipoInfracaoToInfracao < ActiveRecord::Migration
  def up
    rename_table :tipo_infracaos, :infracaos
  end

  def down
    rename_table :infracaos, :tipo_infracaos
  end
end
