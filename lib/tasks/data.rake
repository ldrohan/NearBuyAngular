namespace :data do
  desc "Scraping CraigslistAPI Data"
  task :scrape => :environment do
    require "typhoeus"
    results = Typhoeus.get("http://2834a869.ngrok.com/items.json").body
    items = JSON.parse(results)

    items.each do |i|
      @item = Item.new
      @item.name = i['name']
      @item.description = i['description']
      
      if i['image'] == nil
        @item.image = '/assets/noimage.jpg'
      else
        @item.image = i['image']
      end    
      
      @item.email = i['email']
      @item.lat = i['lat']
      @item.long = i['long']
      @item.phone = i['phone']
      @item.save
    end
  end
end