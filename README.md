# XmlEscape

Encodes and decodes XML escape characters (&, ", ', <, >)

## Installation

Add this line to your application's Gemfile:

    gem 'xml_escape'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xml_escape

## Usage

Include the module `XmlEscape` to get the methods `xml_encode` (plus its
alias `escape_xml`) and `xml_decode` (plus its alias `unescape_xml`).
All methods take a string you want to be transformed as their single argument.


## Contributing

1. Fork it ( http://github.com/<my-github-username>/xml_escape/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
