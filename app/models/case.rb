class Case < Base
  def self.by_filter(filter_id)
    data = desk_api.get "api/v2/filters/#{filter_id}/cases"
    data.body["_embedded"]["entries"].map{ |kase|
      Hashie::Mash.new kase
    }
  end

  def self.find(id)
    data = desk_api.get "api/v2/cases/#{id}"
    Hashie::Mash.new data.body
  end

  def self.add_label(id, name)
    data = desk_api.patch "api/v2/cases/#{id}", { labels: [name] }
    Hashie::Mash.new data.body
  end
end
