class Passenger
    attr_reader :name

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(string)
        @flight_numbers.each do |flight|
            if flight == string.upcase
                return true
            end
        end
        return false
    end

    def add_flight(string)
        
    end
end