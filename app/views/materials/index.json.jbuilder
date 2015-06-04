json.array!(@materials) do |material|
  json.extract! material, :id, :lesson_id, :description
  json.url material_url(material, format: :json)
end
