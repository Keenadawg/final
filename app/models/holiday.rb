class Holiday < ActiveRecord::Base
    def self.import(file)
    CSV.foreach( file.path, headers: true) do |row|
       Holiday.create! row.to_hash
     end 
    end
end
