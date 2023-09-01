class Item
    
    def self.valid_date?(date_string)
        dates = date_string.split("-")

            year = dates[0]
            month = dates [1]
            day = dates[2]

            if year.length < 4 || month.length < 2 || day.length < 2
                return false
            end

            if month.to_i > 12 || day.to_i > 31
                return false
            end

        return true
    end
    
    p Item.valid_date?('2019-10-25') # true
    p Item.valid_date?('1912-06-23') # true
    p Item.valid_date?('2018-13-20') # false
    p Item.valid_date?('2018-12-32') # false
    p Item.valid_date?('10-25-2019') # false





end