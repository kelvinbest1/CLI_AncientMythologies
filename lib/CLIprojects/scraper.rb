class Scraper

  def self.scrape
     @doc ||= Nokogiri::HTML(open("https://rickriordan.com/extra/chirons-guide-to-greek-mythology/")).css('div.q-and-a')
   end

   def self.scrape_mythologies
       self.scrape.each do |ele|
         name = ele.search("div.question").text.strip
         info = ele.search("div.answer").text
         Mythology.new(name, info)
       end
     end
