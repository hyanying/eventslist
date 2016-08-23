json.extract! event, :id, :title, :description, :imageurl, :date, :time, :created_at, :updated_at
json.url event_url(event, format: :json)