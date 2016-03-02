module Glio

  class Location

    def initialize(name, city, state)
      @name = name
      @city = city
      @state = state
    end

    def to_s
      "#{@name} - #{@city}/#{@state}"
    end

  end

end
