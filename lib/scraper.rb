require "nokogiri"
require "pry"
require "open-uri"
require 'rake'

class Facts


    attr_accessor :fact
    @@all = []

    def initialize
        @@all << self
    end

end


class Scraper

    def self.scrape_data
       doc = Nokogiri::HTML(open("https://nationfacts.net/puerto-rico-facts/")) #works
       get_page = doc.css('table') #works 
       get_page.collect do |fact| # fact works so its being defined when called, it list the table structure.
        puts get_page.text.strip

        binding.pry

       end
    end

end
   
        # fact.css('table').text
    #    end
        # puts fact.text.strip
    
    #    fact.each do |facts|
                # puts facts.text.strip

    #    binding.pry
 
      
    # def get_facts
    #     self.get_page.css('table').text
        # self.get_page.css('table').text
        # fact = doc.css('table').text
        # binding.pry
    # end


    # def make_fact
    #     fact.each do |fact|
    #         puts Facts.new.text.strip

    #     end
      
    #   binding.pry
    
    # end 
# binding.pry #only pry that works
# end 


# tableData = facts_page.css('table').text
# tableData = facts_page.css('table')
# def make_fact
#     fact.each do |facts|
#         puts facts.text.strip


# doc.css('table').text (grabs all of quotes bunched into one)



# doc.css('table').each do |fact|
#     Facts.new.text.strip


# def self.scrape_data
#     doc = Nokogiri::HTML(open("https://nationfacts.net/puerto-rico-facts/"))
#     get_page = doc.css('table')
#     get_page.collect do |facts|
#      puts get_page.text.strip

#      binding.pry

#     end