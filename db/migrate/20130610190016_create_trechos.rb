class CreateTrechos < ActiveRecord::Migration
  def change
    create_table :trechos do |t|
      t.string :street
      t.string :perimeter
      t.integer :side_left_start
      t.integer :side_left_stop
      t.integer :side_right_start
      t.integer :side_right_stop

      t.timestamps
    end
  end
end
