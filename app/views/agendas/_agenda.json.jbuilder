json.extract! agenda, :id, :paciente, :medico, :dtHoraConsulta, :created_at, :updated_at
json.url agenda_url(agenda, format: :json)
