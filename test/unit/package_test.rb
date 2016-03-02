require "minitest/autorun"
require "glio/package"
require "test_helpers"

class TestPackage < MiniTest::Test
  def test_update_status
    event = TestHelper.create_post_event()

    package = Glio::Package.new("PE555802169BR")

    package.update_status(event)

    assert_equal "Postado", package.current_status
  end
end
