class TwentyNineHours
  class KeywordsMatcher < Matcher
    def initialize(keywords)
      @regexp = Regexp.compile(keywords.join("|"))
    end

    def match?(tweet)
      @regexp =~ tweet["text"]
    end
  end
end
