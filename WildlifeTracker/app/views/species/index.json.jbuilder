json.array!(@species) do |species|
  json.extract! species, :id, :animal
  json.url species_url(species, format: :json)
end
