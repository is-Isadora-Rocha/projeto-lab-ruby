class CreatePedidos < ActiveRecord::Migration[7.1]
  def change
    create_table :pedidos do |t|
      t.string :nome__cliente
      t.date :data_pedido
      t.integer :status_pedido
      t.integer :forma_pagamento
      t.decimal :valor_total

      t.timestamps
    end
  end
end
