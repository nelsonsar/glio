require "glio/location"

class TestHelper

  def self.create_post_event
    location = Glio::Location.new("CTCE VARGINHA", "Varginha", "MG")

    return Glio::Event.new("Postado", location)
  end

end
