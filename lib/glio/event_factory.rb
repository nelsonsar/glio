require 'glio/event'

module Glio

  class EventFactory

    def self.without_details(event_name, location)
      Event.new(event_name, location, nil)
    end

    def self.with_details(event_name, location, details)
      Event.new(event_name, location, details)
    end

  end

end
