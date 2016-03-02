module Glio

  class Package

    def initialize(id)
      @id = id
      @events = []
    end

    def update_status(event)
      @events << event
    end

    def current_status()
      @events.last.name
    end

  end

end
