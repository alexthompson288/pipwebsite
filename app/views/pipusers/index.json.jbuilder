json.array!(@pipusers) do |pipuser|
  json.extract! pipuser, :id, :first_name, :last_name, :account_username, :ip_address, :country, :postcode
  json.url pipuser_url(pipuser, format: :json)
end
