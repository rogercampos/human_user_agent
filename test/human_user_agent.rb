require File.expand_path('../../lib/human_user_agent', __FILE__)
require 'minitest/autorun'

class TestHumanUserAgent < MiniTest::Unit::TestCase
  def test_ie_8
    raw_user_agent = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)"
    assert_equal "IE 8.0", HumanUserAgent.parse(raw_user_agent)
  end

  def test_chrome

  end

  def test_firefox

  end
end

