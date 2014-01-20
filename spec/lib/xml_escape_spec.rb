require 'spec_helper'

describe XmlEscape do
  let(:dummy) do
    Class.new { include XmlEscape }.new
  end

  let(:txt) { '& text, - " \' < >' }
  let(:encoded_txt) { 'arma &amp; &quot;virum&quot;' }

  describe "#xml_encode" do
    it "encodes xml characters" do
      dummy.xml_encode(txt).should == '&amp; text, - &quot; &apos; &lt; &gt;'
    end
  end

  describe "#escape_xml" do
    it "is an alias of #xml_encode" do
      dummy.xml_encode(txt).should == dummy.escape_xml(txt)
    end
  end

  describe "#xml_decode" do
    it "decodes xml characters" do
      dummy.xml_decode(encoded_txt).should == 'arma & "virum"'
    end
  end

  describe "#unescape_xml" do
    it "is an alias to #xml_decode" do
      dummy.xml_decode(encoded_txt).should == dummy.unescape_xml(encoded_txt)
    end
  end
end
