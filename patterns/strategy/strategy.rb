class BaseTextParser
  def parse
    raise 'Not implemented: abstract class'
  end
end

class MarkdownParser < BaseTextParser
  def parse(text)
    "* #{text}"
  end
end

class XMLParser < BaseTextParser
  def parse(text)
    "<text>#{text}</text>"
  end
end

class TextParser
  attr_reader :text

  def initialize(text, parser)
    @text, @parser = text, parser
  end

  def parse
    puts(@parser.parse(text))
  end
end

xml_parsed = TextParser.new("SOmeText", XMLParser.new)
xml_parsed.parse

mkd_parsed = TextParser.new("Some text", MarkdownParser.new)
mkd_parsed.parse
