
    require 'nokogiri'
    require 'open-uri'
    
    # Fetch and parse HTML document
doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    
var_mar = doc.xpath('//p/a').map { |link| link['href'] }
    
  

var_final = var_mar.map {|x| "http://annuaire-des-mairies.com" + x}
 



# Fetch and parse HTML document
#doc = Nokogiri::HTML(open(x))

doc =  var_final.each { |x| Nokogiri::HTML(open(x))}


go = doc.each { |x| puts x.xpath('//tr/td')[7]}
 

