class Formatter
  def initialize
    @title, @body = "title", %w(some random words)
  end

  def template
    header(@title)
    body(@body)
    footer
  end

  def header(title)
    raise "Not implemented: abstract method"
  end

  def body(body)
    raise "Not implemented abstract method"
  end

  def footer
    raise "Not implemented abstract method"
  end
end

class PlainTextFormatter < Formatter
  def header(title)
    puts("***** #{title} *****")
  end

  def body(words)
    words.each do |word|
      puts(word)
    end
  end

  def footer
    puts("**********")
  end
end

class HTMLFormatter < Formatter
  def header(title)
    puts("
<!DOCTYPE html>
<html lang='en'>
<head>
  <meta charset='UTF-8'>
  <title>#{title}</title>
</head>
         ")
  end

  def body(words)
    words.each do |word|
      puts("  </p>#{word}</p>")
    end
  end

  def footer
    puts("</html>")
  end
end
