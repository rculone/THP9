def get_the_email_of_a_townhal_from_its_webpage(url_page)

require 'nokogiri'
require 'open-uri'


#####Récupération du mail d'une page précise
# Fetch and parse HTML document
doc = Nokogiri::HTML(open(url_page))

puts doc.xpath('//tr/td')[7] 


end

get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com/95/vaureal.html")

