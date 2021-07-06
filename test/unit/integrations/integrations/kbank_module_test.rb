require 'test_helper'

class KbankTest < Test::Unit::TestCase
  include OffsitePayments::Integrations

  def test_notification_method
    assert_instance_of Kbank::Notification, Kbank.notification('name=cody')
  end
end
