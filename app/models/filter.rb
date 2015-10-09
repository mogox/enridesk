require 'desk'

class Filter
  def self.all
    data = Desk.filters
    data["raw"]["_embedded"]["entries"]
  end

  def self.find(id)
    data = Desk.filter(id)
    data["raw"]
  end
end
