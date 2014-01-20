module XmlEscape
  def xml_encode(str)
    str.gsub(DECODED_CHARACTERS, ENCODE_MAP)
  end
  alias_method :escape_xml, :xml_encode

  def xml_decode(str)
    str.gsub(ENCODED_CHARACTERS, DECODE_MAP)
  end
  alias_method :unescape_xml, :xml_decode

  private

  ENCODE_MAP = {
    '&' => '&amp;',
    '"' => '&quot;',
    "'" => '&apos;',
    '<' => '&lt;',
    '>' => '&gt;',
  }

  DECODE_MAP = ENCODE_MAP.each_with_object({}) { |(k, v), h| h[v] = k }

  DECODED_CHARACTERS = /#{ENCODE_MAP.keys.join('|')}/
  ENCODED_CHARACTERS = /#{ENCODE_MAP.values.join('|')}/
end
