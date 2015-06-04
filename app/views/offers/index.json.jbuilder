json.array!(@offers) do |offer|
  json.extract! offer, :id, :year, :semester
  json.url offer_url(offer, format: :json)
end
