require_relative"passenger"

class Flight
    attr_reader :passengers

    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end

    def full?
         @passengers.count == @capacity
    end

    def board_passenger(person)

        if person.has_flight?(@flight_number) && self.full? == false
            @passengers << person
        end

    end

    def list_passengers
    names = []

        @passengers.each do |ele|
            names << ele.name
        end

        names

    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end

end