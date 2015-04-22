json.array!(@userholidays) do |userholiday|
  json.extract! userholiday, :id, :username, :start, :end, :managersName, :duration
  json.url userholiday_url(userholiday, format: :json)
end
