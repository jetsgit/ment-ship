json.array!(@creators) do |creator|
  json.extract! creator, :id, :fname, :lname, :addr1, :addr2, :city, :state, :zip, :resume
  json.url creator_url(creator, format: :json)
end
