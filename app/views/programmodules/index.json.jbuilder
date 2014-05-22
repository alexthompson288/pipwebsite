json.array!(@programmodules) do |programmodule|
  json.extract! programmodule, :id, :number, :colour, :phaselevel, :programmename, :cms_id
  json.url programmodule_url(programmodule, format: :json)
end
