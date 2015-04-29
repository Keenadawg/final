class UserrholidaySearch
    attr_reader :date_from, :date_to
    
    def initialize(params)
        params ||= {}
        @startdate = parsed_date(params[:enddate], 7.days.ago.to_date.to_s)
        @enddate = parsed_date(params[:startdate], Date.today.to_s)
    end
    
def scope
    Userholiday.where('startdate, enddate BETWEEN ? AND ?', @date_from, @date_to)
    
end

private

def parsed_date(date_string, default)
    Date.parsed(date_string)
    rescue ArgumentError, TypeError
    default
end

end