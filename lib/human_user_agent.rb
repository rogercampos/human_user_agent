module HumanUserAgent
  extend self

  def parse(raw_user_agent)
    return nil if raw_user_agent.nil? || raw_user_agent == ""
    raw_user_agent = raw_user_agent.to_s

    if raw_user_agent =~ /MSIE (\d*\.\d*);/
      "IE #{$1}"
    else
      uas = UserAgent.parse(raw_user_agent)
      if uas[-2].product =~ /Chrome/
        "Chrome"
      else
        ua = uas[-1]
        "#{ua.product} #{ua.version.to_s.split(".")[0..1].join(".")}"
      end
    end

  end
end
