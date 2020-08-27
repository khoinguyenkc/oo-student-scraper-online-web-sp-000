require 'open-uri'
require "nokogiri"
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    #Goal: we watn this method to return an array of hashes, each hash represent one student
    doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/"))
    #all student cards have the div class="student-card"
    #down one level u have the a href, we want that href attributes
    #down another level we have div class card-text-container
    #inside that we want <h4 class="student-name"
    #and <p class student-location
    doc.css(".student-card") #this should give me an "nodeset" of all those student card items

  end

  def self.scrape_profile_page(profile_url)

  end

end
