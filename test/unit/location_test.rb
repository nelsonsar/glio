require "minitest/autorun"
require "glio/location"

module Glio

  class TestLocation < MiniTest::Test

    def test_to_string
      location = Glio::Location.new("CTCE VARGINHA", "Varginha", "MG")

      assert_equal "CTCE VARGINHA - Varginha/MG", location.to_s
    end

  end

end
