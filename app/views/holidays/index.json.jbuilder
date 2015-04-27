json.array!(@holidays) do |holiday|
  json.extract! holiday, :id, :username, :manager, :startdate, :enddate, :duration
  json.url holiday_url(holiday, format: :json)
end
