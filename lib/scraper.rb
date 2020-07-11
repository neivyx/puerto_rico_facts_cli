require 'pry'

class Scraper

    def self.scrape_facts
        facts_page = Nokogiri::HTML(open("https://nationfacts.net/puerto-rico-facts/"))
        binding.pry
    end

end 