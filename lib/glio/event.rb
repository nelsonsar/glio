require 'date'

module Glio

  class Event

    attr_reader :name
    attr_reader :location
    attr_reader :details
    attr_reader :ocurred_at

    def initialize(event_name, location, details=nil)
      @name = event_name
      @ocurred_at = DateTime.now
      @location = location
      @details = details
    end

  end

end
