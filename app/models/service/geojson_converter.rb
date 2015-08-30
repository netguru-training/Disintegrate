require 'json'
module Service
  class GeojsonConverter
    attr_reader :advertisements

    def initialize(advertisements, base_url)
      @advertisements = advertisements
      @base_url = base_url
    end

    def call
      hashes = Array.new
      advertisements.each do |advertisement|
        cor = [advertisement.map_long.to_f, advertisement.map_lat.to_f]
        geo = {type: :Point, coordinates: cor}
        link = '<a href="'+@base_url+'/advertisements/'+advertisement.id.to_s+'">Show</a>'
        prop = {title: advertisement.title, description: "#{advertisement.address}<br /> #{link}", "marker-color": "#fc4353", "marker-size": "medium", "marker-symbol": "building" }
        adv = {type: :Feature, geometry: geo, properties: prop}
        hashes.push(adv)
      end
      JSON.generate(hashes)
    end
  end
end

