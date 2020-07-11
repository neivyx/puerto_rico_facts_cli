require "nokogiri"
require "pry"
require "open-uri"

puts "hello"

class Scraper
    puts "hello"

    puts "is this working"
    def self.scrape_facts
        facts_page = Nokogiri::HTML(open("https://nationfacts.net/puerto-rico-facts/"))
        # tableData = facts_page.css('table')
        tableData = facts_page.css('table').text
        tableData.each do |facts|
            puts facts.text.strip

            binding.pry
        end
       
    
    end 

end 


