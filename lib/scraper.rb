class Scraper

    def self.scrape_facts
        Nokogiri::HTML(open("https://nationfacts.net/puerto-rico-facts/"))

    end

end