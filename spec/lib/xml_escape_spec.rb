require 'spec_helper'

describe XmlEscape do
  let(:dummy) do
    Class.new { include XmlEscape }.new
  end

  describe "#xml_encode" do
    it "encodes xml characters" do
      txt = '& text, - " \' < >'
      dummy.xml_encode(txt).should == '&amp; text, - &quot; &apos; &lt; &gt;'
    end
  end

  describe "#xml_decode" do
    it "decodes xml characters" do
      txt = 'arma &amp; &quot;virum&quot;'
      dummy.xml_decode(txt).should == 'arma & "virum"'
    end
  end
end
