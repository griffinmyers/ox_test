class ParseController < ActionController::Base
  before_filter :parse

  def index
  end

  def parse
    xml = '<ns:Envelope xmlns:ns="http://schemas.xmlsoap.org/soap/envelope/"><ns:Header/><ns:Body><ns:Fault><faultcode>ns:Client</faultcode><faultstring>Message does not have necessary info</faultstring><faultactor>http://gizmos.com/order</faultactor><detail><PO:order xmlns:PO="http://gizmos.com/orders/">Quantity element does not have a value</PO:order><PO:confirmation xmlns:PO="http://gizmos.com/confirm">Incomplete address: no zip code</PO:confirmation></detail></ns:Fault></ns:Body></ns:Envelope>'

    100.times do 
      fault_doc = ::Soap::FaultDoc.new
      Ox.sax_parse(fault_doc, StringIO.new(xml))
    end
  end

end
