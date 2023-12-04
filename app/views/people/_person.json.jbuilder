json.extract! person, :id, :name, :cpf, :phone, :created_at, :updated_at
json.url person_url(person, format: :json)
