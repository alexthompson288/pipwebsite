json.array!(@activities) do |activity|
  json.extract! activity, :account_username, :child_name
  json.url activity_url(activity, format: :json)
end
