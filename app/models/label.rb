class Label < Base
  def self.all
    data = desk_api.get 'api/v2/labels'
    data.body["_embedded"]["entries"].map{ |label|
      Hashie::Mash.new label
    }
  end

  def self.create(name, description)
    data = desk_api.post(
      'api/v2/labels',
      { name: name,
        description: description,
        types: ["case", "macro"] }
    )
    Hashie::Mash.new data.body
  end
end
