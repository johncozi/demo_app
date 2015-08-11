json.array!(@widgits) do |widgit|
  json.extract! widgit, :id, :name, :description
  json.url widgit_url(widgit, format: :json)
end
