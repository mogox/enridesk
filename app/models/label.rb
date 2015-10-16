class Label < Base
  def self.all
    data = desk_api.get 'api/v2/labels'
    data.body["_embedded"]["entries"].map{ |label|
      Hashie::Mash.new label
    }
  end

  def self.create(name, description)
    data = Desk.create_label(
      :name => name,
      :description => description,
      :types => [ "case", "macro" ],
    )
    data
  end
end
