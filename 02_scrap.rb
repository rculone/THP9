

require 'nokogiri'
require 'open-uri'

    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    #on parse la page de coinmarket

  
  #Récupération des données
    links = page.search("a[class=currency-name-container]").map {|x| x.content}
   

#Récupération des prix 

links2 = page.search("a[class=price]").map {|x| x.content}


#creation d'un hash avec les arrays links et links 2 
puts Hash[*links.zip(links2).flatten]
 

      
  