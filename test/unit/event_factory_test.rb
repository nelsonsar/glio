require "minitest/autorun"
require "glio/event_factory"
require "glio/location"

class TestEventFactory < MiniTest::Test

  def test_create_event_without_details
    name = "Postado"
    location = Glio::Location.new("CTCE VARGINHA", "Varginha", "MG")
    event = Glio::EventFactory.without_details(name, location)

    assert_equal "Postado", event.name
    assert_equal "CTCE VARGINHA - Varginha/MG", event.location.to_s
  end

  def test_create_event_with_details
    name = "Postado"
    details = "Encaminhado para CTE BELO HORIZONTE - BELO HORIZONTE/MG"
    location = Glio::Location.new("CTCE VARGINHA", "Varginha", "MG")

    event = Glio::EventFactory.with_details(name, location, details)

    assert_equal name, event.name
    assert_equal "CTCE VARGINHA - Varginha/MG", event.location.to_s
    assert_equal details, event.details
  end

end
