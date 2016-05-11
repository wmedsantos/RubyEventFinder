json.array!(@eventos) do |evento|
  json.extract! evento, :id, :nome, :descricao, :datainicio, :datafim, :local, :endereco, :site, :vagasdisponiveis
  json.url evento_url(evento, format: :json)
end
