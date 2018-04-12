require 'nokogiri'
require 'open-uri'
 
url_incub = "http://www.alloweb.org/annuaire-startups/annuaire-incubateurs-startups/page/"

count = 0 
i = 0
for i in 1 ..37 
        count += 1 

    pages_list = ("http://www.alloweb.org/annuaire-startups/annuaire-incubateurs-startups/page/#{i}/")

print pages_list
end 

