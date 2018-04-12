def get_all_the_urls_of_val_doise_townhalls(url)

    require 'nokogiri'
    require 'open-uri'
    
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(open(url))
    
  var_mar = doc.xpath('//p/a').map { |link| link['href'] }
    
  

   var_final = var_mar.map {|x| "http://annuaire-des-mairies.com/" + x}
 
end 

 puts get_all_the_urls_of_val_doise_townhalls("http://annuaire-des-mairies.com/val-d-oise.html")


