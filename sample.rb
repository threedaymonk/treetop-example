require "treetop"
require "polyglot"
require "simple_html"
require "complex_html"
require "pp"

html = <<END
  <div id="main">
    <h1>Header</h1>
    <p>Blah blah blah</p>
    <hr class="alpha" />
    <img src="/image.png" alt="Some alt text" />
  </div>
END

puts "Simple"
pp SimpleHTMLParser.new.parse(html).content

puts "Complex"
pp ComplexHTMLParser.new.parse(html).content
