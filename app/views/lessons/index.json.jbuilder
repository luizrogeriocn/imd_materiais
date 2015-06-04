json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :lesson_number, :class_id, :offer_id, :description
  json.url lesson_url(lesson, format: :json)
end
