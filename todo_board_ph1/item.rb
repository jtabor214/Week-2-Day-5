class Item
    
    def self.valid_date?(date_string)
        dates = date_string.split("-")

            year = dates[0]
            month = dates[1]
            day = dates[2]

            if year.length < 4 || month.length < 2 || day.length < 2
                return false
            end

            if month.to_i > 12 || day.to_i > 31
                return false
            end

        return date_string
    end
    

        def initialize(title, deadline, description)
            @title = title
            @description = description
            @deadline = Item.valid_date?(deadline)
                if @deadline == false
                    raise "error"
                end
        end   


end