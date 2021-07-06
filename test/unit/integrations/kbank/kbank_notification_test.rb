require 'test_helper'

class KbankNotificationTest < Test::Unit::TestCase
  include OffsitePayments::Integrations

  def setup
    @kbank = Kbank::Notification.new(http_raw_data)
  end

  def test_accessors
    assert @kbank.complete?
    assert_equal "", @kbank.status
    assert_equal "", @kbank.transaction_id
    assert_equal "", @kbank.item_id
    assert_equal "", @kbank.gross
    assert_equal "", @kbank.currency
    assert_equal "", @kbank.received_at
    assert @kbank.test?
  end

  def test_compositions
    assert_equal Money.from_amount(31.66, 'USD'), @kbank.amount
  end

  # Replace with real successful acknowledgement code
  def test_acknowledgement

  end

  def test_send_acknowledgement
  end

  def test_respond_to_acknowledge
    assert @kbank.respond_to?(:acknowledge)
  end

  private
  def http_raw_data
    ""
  end
end
