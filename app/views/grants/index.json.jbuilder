json.array!(@grants) do |grant|
  json.extract! grant, :id, :name, :organization, :email, :phone, :contact_fname, :contact_lname, :addr1, :addr2, :city, :state, :zip, :fund_type, :app_process, :app_deadline
  json.url grant_url(grant, format: :json)
end
