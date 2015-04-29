json.array!(@userholidays) do |userholiday|
  json.extract! userholiday, :id, :username, :managersName, :start, :end, :duration
  json.url userholiday_url(userholiday, format: :json)
end
