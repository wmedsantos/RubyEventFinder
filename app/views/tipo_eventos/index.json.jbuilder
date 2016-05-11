json.array!(@tipo_eventos) do |tipo_evento|
  json.extract! tipo_evento, :id, :Nome
  json.url tipo_evento_url(tipo_evento, format: :json)
end
