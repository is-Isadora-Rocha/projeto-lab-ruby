class CreateAgendas < ActiveRecord::Migration[7.1]
  def change
    create_table :agendas do |t|
      t.string :paciente
      t.string :medico

      t.timestamps
    end
  end
end
