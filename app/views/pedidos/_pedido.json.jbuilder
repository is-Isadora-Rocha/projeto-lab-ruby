json.extract! pedido, :id, :nome__cliente, :data_pedido, :status_pedido, :forma_pagamento, :valor_total, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
