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

  describe "#xml_decode" do
    it "decodes xml characters" do
      dummy.xml_decode(encoded_txt).should == 'arma & "virum"'
    end
  end
end
