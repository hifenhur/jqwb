class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :nome

      t.timestamps
    end
  end
end
