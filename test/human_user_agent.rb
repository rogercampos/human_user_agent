require File.expand_path('../../lib/human_user_agent', __FILE__)
require 'minitest/autorun'

class TestHumanUserAgent < MiniTest::Unit::TestCase
  def test_ie_7
    raw_user_agent = "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/4.0; GTB7.3; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.5; OfficeLivePatch.1.3; .NET4.0C; BRI/2)"
    assert_equal "IE 7.0", HumanUserAgent.parse(raw_user_agent)
  end

  def test_ie_8
    raw_user_agent = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)"
    assert_equal "IE 8.0", HumanUserAgent.parse(raw_user_agent)
  end

  def test_ie_9
    raw_user_agent = "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)"
    assert_equal "IE 9.0", HumanUserAgent.parse(raw_user_agent)
  end

  def test_chrome
    raw_user_agent = "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.46 Safari/536.5"
    assert_equal "Chrome", HumanUserAgent.parse(raw_user_agent)
  end

  def test_firefox_11
    raw_user_agent = "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:11.0) Gecko/20100101 Firefox/11.0"
    assert_equal "Firefox 11.0", HumanUserAgent.parse(raw_user_agent)
  end

  def test_firefox_12
    raw_user_agent = "Mozilla/5.0 (Windows NT 6.1; rv:12.0) Gecko/20100101 Firefox/12.0"
    assert_equal "Firefox 12.0", HumanUserAgent.parse(raw_user_agent)
  end

  def test_firefox_7
    raw_user_agent = "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:7.0.1) Gecko/20100101 Firefox/7.0.1"
    assert_equal "Firefox 7.0", HumanUserAgent.parse(raw_user_agent)
  end

  def test_firefox_3
    raw_user_agent = "Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2"
    assert_equal "Firefox 3.5", HumanUserAgent.parse(raw_user_agent)
  end

  def test_to_s_conversion
    klass = Class.new do
      def to_s
        "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/4.0; GTB7.3; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.5; OfficeLivePatch.1.3; .NET4.0C; BRI/2)"
      end
    end

    assert_equal "IE 7.0", HumanUserAgent.parse(klass.new)
  end

  def test_nil_or_blank_input
    assert_equal nil, HumanUserAgent.parse(nil)
    assert_equal nil, HumanUserAgent.parse("")
  end
end

