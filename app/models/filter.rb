class Filter < Base
  def self.all
    data = desk_api.get 'api/v2/filters'
    data.body["_embedded"]["entries"].map{ |filter|
      Hashie::Mash.new filter
    }
  end

  def self.find(id)
    data = desk_api.get "api/v2/filters/#{id}"
    Hashie::Mash.new data.body
  end
end
